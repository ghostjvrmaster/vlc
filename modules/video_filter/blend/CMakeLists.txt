cmake_minimum_required(VERSION 3.10)

project(video_filter_blend_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../blend.cpp")

ConfigureModule(video_filter blend)