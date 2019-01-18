cmake_minimum_required(VERSION 3.10)

project(video_filter_rotate_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../rotate.c")

set(MODULE_LIBRARIES
        vlc_libmotion)

ConfigureModule(video_filter rotate)