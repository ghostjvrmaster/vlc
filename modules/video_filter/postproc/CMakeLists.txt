cmake_minimum_required(VERSION 3.10)

project(video_filter_postproc_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../postproc.c")

set(MODULE_LIBRARIES
        postproc)

ConfigureModule(video_filter postproc)