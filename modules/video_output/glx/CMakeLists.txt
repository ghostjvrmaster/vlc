cmake_minimum_required(VERSION 3.10)

project(video_output_glx_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../glx.c")

set(MODULE_LIBRARIES
        va-glx
        va
        X11
        GL)

ConfigureModule(video_output glx)