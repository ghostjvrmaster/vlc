/*****************************************************************************
 * VLCRendererMenuController.h: Controller class for the renderer menu
 *****************************************************************************
 * Copyright (C) 2016 VLC authors and VideoLAN
 * $Id: ae3d6df7f81ee058107cca68b181fe67968d7729 $
 *
 * Authors: Marvin Scholz <epirat07 at gmail dot com>
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

#import <Cocoa/Cocoa.h>

#import "VLCRendererItem.h"
#import "VLCRendererDiscovery.h"

@interface VLCRendererMenuController : NSObject <VLCRendererDiscoveryDelegate>

@property (readwrite, weak) IBOutlet NSMenu     *rendererMenu;
@property (readwrite, weak) IBOutlet NSMenuItem *rendererDiscoveryState;
@property (readwrite, weak) IBOutlet NSMenuItem *rendererDiscoveryToggle;
@property (readwrite, weak) IBOutlet NSMenuItem *rendererNoneItem;

@end
