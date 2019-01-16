cmake_minimum_required(VERSION 3.10)

project(video_filter_mirror_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../mirror.c")

ConfigureModule(video_filter mirror)