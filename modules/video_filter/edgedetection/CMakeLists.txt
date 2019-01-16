cmake_minimum_required(VERSION 3.10)

project(video_filter_edgedetection_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../edgedetection.c")

ConfigureModule(video_filter edgedetection)