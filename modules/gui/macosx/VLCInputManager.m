/*****************************************************************************
 * VLCInputManager.m: MacOS X interface module
 *****************************************************************************
 * Copyright (C) 2015 VLC authors and VideoLAN
 * $Id: 35a0b28d5f877b7e46e0addd5843a921f8e8a611 $
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston MA 02110-1301, USA.
 *****************************************************************************/

#import "VLCInputManager.h"

#import "VLCCoreInteraction.h"
#import "CompatibilityFixes.h"
#import "VLCExtensionsManager.h"
#import "VLCMain.h"
#import "VLCMainMenu.h"
#import "VLCMainWindow.h"
#import "VLCPlaylist.h"
#import "VLCPlaylistInfo.h"
#import "VLCResumeDialogController.h"
#import "VLCTrackSynchronizationWindowController.h"
#import "VLCVoutView.h"

#import "iTunes.h"
#import "Spotify.h"

#pragma mark Callbacks

static int InputThreadChanged(vlc_object_t *p_this, const char *psz_var,
                              vlc_value_t oldval, vlc_value_t new_val, void *param)
{
    @autoreleasepool {
        VLCInputManager *inputManager = (__bridge VLCInputManager *)param;
        [inputManager performSelectorOnMainThread:@selector(inputThreadChanged) withObject:nil waitUntilDone:NO];
    }

    return VLC_SUCCESS;
}

static NSDate *lastPositionUpdate = nil;

static int InputEvent(vlc_object_t *p_this, const char *psz_var,
                      vlc_value_t oldval, vlc_value_t new_val, void *param)
{
    @autoreleasepool {
        VLCInputManager *inputManager = (__bridge VLCInputManager *)param;

        switch (new_val.i_int) {
            case INPUT_EVENT_STATE:
                [inputManager performSelectorOnMainThread:@selector(playbackStatusUpdated) withObject: nil waitUntilDone:NO];
                break;
            case INPUT_EVENT_RATE:
                [[[VLCMain sharedInstance] mainMenu] performSelectorOnMainThread:@selector(updatePlaybackRate) withObject: nil waitUntilDone:NO];
                break;
            case INPUT_EVENT_POSITION:

                // Rate limit to 100 ms
                if (lastPositionUpdate && fabs([lastPositionUpdate timeIntervalSinceNow]) < 0.1)
                    break;

                lastPositionUpdate = [NSDate date];

                [inputManager performSelectorOnMainThread:@selector(playbackPositionUpdated) withObject:nil waitUntilDone:NO];
                break;
            case INPUT_EVENT_TITLE:
            case INPUT_EVENT_CHAPTER:
                [inputManager performSelectorOnMainThread:@selector(updateMainMenu) withObject: nil waitUntilDone:NO];
                break;
            case INPUT_EVENT_CACHE:
                [inputManager performSelectorOnMainThread:@selector(updateMainWindow) withObject:nil waitUntilDone:NO];
                break;
            case INPUT_EVENT_STATISTICS:
                dispatch_async(dispatch_get_main_queue(), ^{
                    [[[VLCMain sharedInstance] currentMediaInfoPanel] updateStatistics];
                });
                break;
            case INPUT_EVENT_ES:
                break;
            case INPUT_EVENT_TELETEXT:
                break;
            case INPUT_EVENT_AOUT:
                break;
            case INPUT_EVENT_VOUT:
                break;
            case INPUT_EVENT_ITEM_META:
            case INPUT_EVENT_ITEM_INFO:
                [inputManager performSelectorOnMainThread:@selector(updateMainMenu) withObject: nil waitUntilDone:NO];
                [inputManager performSelectorOnMainThread:@selector(updateName) withObject: nil waitUntilDone:NO];
                [inputManager performSelectorOnMainThread:@selector(updateMetaAndInfo) withObject: nil waitUntilDone:NO];
                break;
            case INPUT_EVENT_BOOKMARK:
                break;
            case INPUT_EVENT_RECORD:
                dispatch_async(dispatch_get_main_queue(), ^{
                    [[[VLCMain sharedInstance] mainMenu] updateRecordState: var_InheritBool(p_this, "record")];
                });
                break;
            case INPUT_EVENT_PROGRAM:
                [inputManager performSelectorOnMainThread:@selector(updateMainMenu) withObject: nil waitUntilDone:NO];
                break;
            case INPUT_EVENT_ITEM_EPG:
                break;
            case INPUT_EVENT_SIGNAL:
                break;

            case INPUT_EVENT_AUDIO_DELAY:
            case INPUT_EVENT_SUBTITLE_DELAY:
                [inputManager performSelectorOnMainThread:@selector(updateDelays) withObject:nil waitUntilDone:NO];
                break;

            case INPUT_EVENT_DEAD:
                [inputManager performSelectorOnMainThread:@selector(updateName) withObject: nil waitUntilDone:NO];
                [[[VLCMain sharedInstance] mainWindow] performSelectorOnMainThread:@selector(updateTimeSlider) withObject:nil waitUntilDone:NO];
                break;

            default:
                break;
        }

        return VLC_SUCCESS;
    }
}

#pragma mark -
#pragma mark InputManager implementation

@interface VLCInputManager()
{
    __weak VLCMain *o_main;

    input_thread_t *p_current_input;
    dispatch_queue_t informInputChangedQueue;

    /* sleep management */
    IOPMAssertionID systemSleepAssertionID;
    IOPMAssertionID monitorSleepAssertionID;

    IOPMAssertionID userActivityAssertionID;

    /* iTunes/Spotify play/pause support */
    BOOL b_has_itunes_paused;
    BOOL b_has_spotify_paused;

    NSTimer *hasEndedTimer;
}
@end

@implementation VLCInputManager

- (id)initWithMain:(VLCMain *)o_mainObj
{
    self = [super init];
    if(self) {
        msg_Dbg(getIntf(), "Initializing input manager");

        o_main = o_mainObj;
        var_AddCallback(pl_Get(getIntf()), "input-current", InputThreadChanged, (__bridge void *)self);

        informInputChangedQueue = dispatch_queue_create("org.videolan.vlc.inputChangedQueue", DISPATCH_QUEUE_SERIAL);

    }
    return self;
}

- (void)dealloc
{
    msg_Dbg(getIntf(), "Deinitializing input manager");
    if (p_current_input) {
        /* continue playback where you left off */
        [[o_main playlist] storePlaybackPositionForItem:p_current_input];

        var_DelCallback(p_current_input, "intf-event", InputEvent, (__bridge void *)self);
        vlc_object_release(p_current_input);
        p_current_input = NULL;
    }

    var_DelCallback(pl_Get(getIntf()), "input-current", InputThreadChanged, (__bridge void *)self);

#if !OS_OBJECT_USE_OBJC
    dispatch_release(informInputChangedQueue);
#endif
}

- (void)inputThreadChanged
{
    if (p_current_input) {
        var_DelCallback(p_current_input, "intf-event", InputEvent, (__bridge void *)self);
        vlc_object_release(p_current_input);
        p_current_input = NULL;

        [[o_main mainMenu] setRateControlsEnabled: NO];

        [[NSNotificationCenter defaultCenter] postNotificationName:VLCInputChangedNotification
                                                            object:nil];
    }

    // Cancel pending resume dialogs
    [[[VLCMain sharedInstance] resumeDialog] cancel];

    input_thread_t *p_input_changed = NULL;

    // object is hold here and released then it is dead
    p_current_input = playlist_CurrentInput(pl_Get(getIntf()));
    if (p_current_input) {
        var_AddCallback(p_current_input, "intf-event", InputEvent, (__bridge void *)self);
        [self playbackStatusUpdated];
        [[o_main mainMenu] setRateControlsEnabled: YES];

        if ([o_main activeVideoPlayback] && [[[o_main mainWindow] videoView] isHidden]) {
            [[o_main mainWindow] changePlaylistState: psPlaylistItemChangedEvent];
        }

        p_input_changed = vlc_object_hold(p_current_input);

        [[o_main playlist] currentlyPlayingItemChanged];

        [[o_main playlist] continuePlaybackWhereYouLeftOff:p_current_input];

        [[NSNotificationCenter defaultCenter] postNotificationName:VLCInputChangedNotification
                                                            object:nil];
    }

    [self updateMetaAndInfo];

    [self updateMainWindow];
    [self updateDelays];
    [self updateMainMenu];

    /*
     * Due to constraints within NSAttributedString's main loop runtime handling
     * and other issues, we need to inform the extension manager on a separate thread.
     * The serial queue ensures that changed inputs are propagated in the same order as they arrive.
     */
    dispatch_async(informInputChangedQueue, ^{
        [[o_main extensionsManager] inputChanged:p_input_changed];
        if (p_input_changed)
            vlc_object_release(p_input_changed);
    });
}

- (void)playbackPositionUpdated
{
    [[[VLCMain sharedInstance] mainWindow] updateTimeSlider];
    [[[VLCMain sharedInstance] statusBarIcon] updateProgress];
}

- (void)playbackStatusUpdated
{
    // On shutdown, input might not be dead yet. Cleanup actions like inhibit, itunes playback
    // and playback positon are done in different code paths (dealloc and appWillTerminate:).
    if ([[VLCMain sharedInstance] isTerminating]) {
        return;
    }

    intf_thread_t *p_intf = getIntf();
    int state = -1;
    if (p_current_input) {
        state = var_GetInteger(p_current_input, "state");
    }

    // cancel itunes timer if next item starts playing
    if (state > -1 && state != END_S) {
        if (hasEndedTimer) {
            [hasEndedTimer invalidate];
            hasEndedTimer = nil;
        }
    }

    if (state == PLAYING_S) {
        [self stopItunesPlayback];

        [self inhibitSleep];

        [[o_main mainMenu] setPause];
        [[o_main mainWindow] setPause];
    } else {
        [[o_main mainMenu] setSubmenusEnabled: FALSE];
        [[o_main mainMenu] setPlay];
        [[o_main mainWindow] setPlay];

        if (state == PAUSE_S)
            [self releaseSleepBlockers];

        if (state == END_S || state == -1) {
            /* continue playback where you left off */
            if (p_current_input)
                [[o_main playlist] storePlaybackPositionForItem:p_current_input];

            if (hasEndedTimer) {
                [hasEndedTimer invalidate];
            }
            hasEndedTimer = [NSTimer scheduledTimerWithTimeInterval: 0.5
                                                             target: self
                                                           selector: @selector(onPlaybackHasEnded:)
                                                           userInfo: nil
                                                            repeats: NO];
        }
    }

    [self updateMainWindow];
    [self sendDistributedNotificationWithUpdatedPlaybackStatus];
}

// Called when playback has ended and likely no subsequent media will start playing
- (void)onPlaybackHasEnded:(id)sender
{
    msg_Dbg(getIntf(), "Playback has been ended");

    [self releaseSleepBlockers];
    [self resumeItunesPlayback];
    hasEndedTimer = nil;
}

- (void)stopItunesPlayback
{
    intf_thread_t *p_intf = getIntf();
    int controlItunes = var_InheritInteger(p_intf, "macosx-control-itunes");
    if (controlItunes <= 0)
        return;

    // pause iTunes
    if (!b_has_itunes_paused) {
        iTunesApplication *iTunesApp = (iTunesApplication *) [SBApplication applicationWithBundleIdentifier:@"com.apple.iTunes"];
        if (iTunesApp && [iTunesApp isRunning]) {
            if ([iTunesApp playerState] == iTunesEPlSPlaying) {
                msg_Dbg(p_intf, "pausing iTunes");
                [iTunesApp pause];
                b_has_itunes_paused = YES;
            }
        }
    }

    // pause Spotify
    if (!b_has_spotify_paused) {
        SpotifyApplication *spotifyApp = (SpotifyApplication *) [SBApplication applicationWithBundleIdentifier:@"com.spotify.client"];

        if (spotifyApp) {
            if ([spotifyApp respondsToSelector:@selector(isRunning)] && [spotifyApp respondsToSelector:@selector(playerState)]) {
                if ([spotifyApp isRunning] && [spotifyApp playerState] == kSpotifyPlayerStatePlaying) {
                    msg_Dbg(p_intf, "pausing Spotify");
                    [spotifyApp pause];
                    b_has_spotify_paused = YES;
                }
            }
        }
    }
}

- (void)resumeItunesPlayback
{
    intf_thread_t *p_intf = getIntf();
    if (var_InheritInteger(p_intf, "macosx-control-itunes") > 1) {
        if (b_has_itunes_paused) {
            iTunesApplication *iTunesApp = (iTunesApplication *) [SBApplication applicationWithBundleIdentifier:@"com.apple.iTunes"];
            if (iTunesApp && [iTunesApp isRunning]) {
                if ([iTunesApp playerState] == iTunesEPlSPaused) {
                    msg_Dbg(p_intf, "unpausing iTunes");
                    [iTunesApp playpause];
                }
            }
        }

        if (b_has_spotify_paused) {
            SpotifyApplication *spotifyApp = (SpotifyApplication *) [SBApplication applicationWithBundleIdentifier:@"com.spotify.client"];
            if (spotifyApp) {
                if ([spotifyApp respondsToSelector:@selector(isRunning)] && [spotifyApp respondsToSelector:@selector(playerState)]) {
                    if ([spotifyApp isRunning] && [spotifyApp playerState] == kSpotifyPlayerStatePaused) {
                        msg_Dbg(p_intf, "unpausing Spotify");
                        [spotifyApp play];
                    }
                }
            }
        }
    }

    b_has_itunes_paused = NO;
    b_has_spotify_paused = NO;
}

- (void)inhibitSleep
{
    BOOL shouldDisableScreensaver = var_InheritBool(getIntf(), "disable-screensaver");

    /* Declare user activity.
     This wakes the display if it is off, and postpones display sleep according to the users system preferences
     Available from 10.7.3 */
    if ([o_main activeVideoPlayback] && &IOPMAssertionDeclareUserActivity && shouldDisableScreensaver)
    {
        CFStringRef reasonForActivity = CFStringCreateWithCString(kCFAllocatorDefault, _("VLC media playback"), kCFStringEncodingUTF8);
        IOReturn success = IOPMAssertionDeclareUserActivity(reasonForActivity,
                                                            kIOPMUserActiveLocal,
                                                            &userActivityAssertionID);
        CFRelease(reasonForActivity);

        if (success != kIOReturnSuccess)
            msg_Warn(getIntf(), "failed to declare user activity");

    }

    // Only set assertion if no previous / active assertion exist. This is necessary to keep
    // audio only playback awake. If playback switched from video to audio or vice vesa, deactivate
    // the other assertion and activate the needed assertion instead.
    void(^activateAssertion)(CFStringRef, IOPMAssertionID*, IOPMAssertionID*) = ^void(CFStringRef assertionType, IOPMAssertionID* assertionIdRef, IOPMAssertionID* otherAssertionIdRef) {

        if (*otherAssertionIdRef > 0) {
            msg_Dbg(getIntf(), "Releasing old IOKit other assertion (%i)" , *otherAssertionIdRef);
            IOPMAssertionRelease(*otherAssertionIdRef);
            *otherAssertionIdRef = 0;
        }

        if (*assertionIdRef) {
            msg_Dbg(getIntf(), "Continue to use IOKit assertion %s (%i)", [(__bridge NSString *)(assertionType) UTF8String], *assertionIdRef);
            return;
        }

        CFStringRef reasonForActivity = CFStringCreateWithCString(kCFAllocatorDefault, _("VLC media playback"), kCFStringEncodingUTF8);

        IOReturn success = IOPMAssertionCreateWithName(assertionType, kIOPMAssertionLevelOn, reasonForActivity, assertionIdRef);
        CFRelease(reasonForActivity);

        if (success == kIOReturnSuccess)
            msg_Dbg(getIntf(), "Activated assertion %s through IOKit (%i)", [(__bridge NSString *)(assertionType) UTF8String], *assertionIdRef);
        else
            msg_Warn(getIntf(), "Failed to prevent system sleep through IOKit");
    };

    if ([o_main activeVideoPlayback] && shouldDisableScreensaver) {
        activateAssertion(kIOPMAssertionTypeNoDisplaySleep, &monitorSleepAssertionID, &systemSleepAssertionID);
    } else {
        activateAssertion(kIOPMAssertionTypeNoIdleSleep, &systemSleepAssertionID, &monitorSleepAssertionID);
    }

}

- (void)releaseSleepBlockers
{
    /* allow the system to sleep again */
    if (systemSleepAssertionID > 0) {
        msg_Dbg(getIntf(), "Releasing IOKit system sleep blocker (%i)" , systemSleepAssertionID);
        IOPMAssertionRelease(systemSleepAssertionID);
        systemSleepAssertionID = 0;
    }

    if (monitorSleepAssertionID > 0) {
        msg_Dbg(getIntf(), "Releasing IOKit monitor sleep blocker (%i)" , monitorSleepAssertionID);
        IOPMAssertionRelease(monitorSleepAssertionID);
        monitorSleepAssertionID = 0;
    }
}

- (void)updateMetaAndInfo
{
    if (!p_current_input) {
        [[[VLCMain sharedInstance] currentMediaInfoPanel] updatePanelWithItem:nil];
        return;
    }

    input_item_t *p_input_item = input_GetItem(p_current_input);

    [[[o_main playlist] model] updateItem:p_input_item];
    [[[VLCMain sharedInstance] currentMediaInfoPanel] updatePanelWithItem:p_input_item];
}

- (void)updateMainWindow
{
    [[o_main mainWindow] updateWindow];
}

- (void)updateName
{
    [[o_main mainWindow] updateName];
}

- (void)updateDelays
{
    [[[VLCMain sharedInstance] trackSyncPanel] updateValues];
}

- (void)updateMainMenu
{
    [[o_main mainMenu] setupMenus];
    [[o_main mainMenu] updatePlaybackRate];
    [[VLCCoreInteraction sharedInstance] resetAtoB];
}

- (void)sendDistributedNotificationWithUpdatedPlaybackStatus
{
    [[NSDistributedNotificationCenter defaultCenter] postNotificationName:@"VLCPlayerStateDidChange"
                                                                   object:nil
                                                                 userInfo:nil
                                                       deliverImmediately:YES];
}

- (BOOL)hasInput
{
    return p_current_input != NULL;
}

@end
