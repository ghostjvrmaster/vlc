cmake_minimum_required(VERSION 3.10)

project(video_filter_sepia_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../sepia.c")

ConfigureModule(video_filter sepia)