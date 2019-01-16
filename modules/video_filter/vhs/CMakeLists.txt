cmake_minimum_required(VERSION 3.10)

project(video_filter_vhs_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../vhs.c")

ConfigureModule(video_filter vhs)