cmake_minimum_required(VERSION 3.10)

project(video_output_xcb_xv_plugin)

if (HAVE_XCB)

    include(${vlc_MODULE_HELPER})

    file(GLOB SRC_FILES
            "../xcb/pictures"
            "../xcb/xvideo.c")

    set(MODULE_LIBRARIES
            X11)

    ConfigureModule(video_output xcb_xv)

endif ()