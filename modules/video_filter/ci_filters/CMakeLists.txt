cmake_minimum_required(VERSION 3.10)

project(video_filter_ci_filters_plugin)

include(${vlc_MODULE_HELPER})

set(MODULE_INCLUDE_DIRS
        ../../codec)

file(GLOB SRC_FILES
        "../ci_filters.m")

ConfigureModule(video_filter ci_filters)