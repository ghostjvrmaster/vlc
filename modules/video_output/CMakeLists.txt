cmake_minimum_required(VERSION 3.10)

project(video_output)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        vdummy;
        vmem;
        xcb_window;
        xcb_x11;
        xcb_xv;)

set(SUBMODULES
        opengl;)

ConfigureModuleGroup()