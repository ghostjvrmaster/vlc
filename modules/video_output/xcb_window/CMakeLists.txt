cmake_minimum_required(VERSION 3.10)

project(video_output_xcb_window_plugin)

if (HAVE_XCB)

    include(${vlc_MODULE_HELPER})

    file(GLOB SRC_FILES
            "../xcb/keys.c"
            "../xcb/window.c")

    set(MODULE_LIBRARIES
            X11
            xcb
            xcb-shm)

    ConfigureModule(video_output xcb_window)

endif ()