cmake_minimum_required(VERSION 3.10)

project(video_filter_scale_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../scale.c")

ConfigureModule(video_filter scale)