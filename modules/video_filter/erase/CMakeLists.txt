cmake_minimum_required(VERSION 3.10)

project(video_filter_erase_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../erase.c")

ConfigureModule(video_filter erase)