cmake_minimum_required(VERSION 3.10)

project(video_filter_transform_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../transform.c")

ConfigureModule(video_filter transform)