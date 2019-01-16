cmake_minimum_required(VERSION 3.10)

project(video_output_xcb_x11_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../xcb/pictures.c"
        "../xcb/x11.c")

set(MODULE_LIBRARIES
        xcb
        xcb-shm)

ConfigureModule(video_output xcb_window)