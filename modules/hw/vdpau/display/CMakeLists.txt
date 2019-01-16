cmake_minimum_required(VERSION 3.10)

project(hw_vdpau_display_plugin)

include(${vlc_MODULE_HELPER})

set(MODULE_INCLUDE_DIRS
        "../../../video_output/xcb/")

file(GLOB SRC_FILES
        "../display.c"
        "../../../video_output/xcb/events.c")

set(MODULE_LIBRARIES
        vlc_vdpau
        X11
        xcb)

ConfigureModule(hw vdpau_display)