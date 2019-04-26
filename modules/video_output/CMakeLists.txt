cmake_minimum_required(VERSION 3.10)

project(video_output)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        vdummy
        vmem)

set(SUBMODULES
        opengl)

if (HAVE_XCB)
    list(APPEND PLUGINS
            xcb_window
            xcb_x11
            xcb_xv)
endif ()

if (ANDROID)
    list(APPEND SUBMODULES
            android)
endif ()

ConfigureModuleGroup()