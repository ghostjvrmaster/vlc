// Copyright (C) 2019 Jaunt, Inc.

#include <vlc/vlc.h>

int main(int argc, const char **argv) {
    libvlc_instance_t *vlc = libvlc_new(argc, argv);

    if (!vlc) {
        return 1;
    }

    libvlc_add_intf(vlc, "dummy");
    libvlc_media_player_t *player = libvlc_media_player_new(vlc);
    libvlc_playlist_play(vlc, -1, 0, NULL);

    libvlc_wait(vlc);
    libvlc_release(vlc);
}