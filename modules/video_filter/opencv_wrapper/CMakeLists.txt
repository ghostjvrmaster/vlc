cmake_minimum_required(VERSION 3.10)

project(video_filter_opencv_wrapper_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../opencv_wrapper.c")

ConfigureModule(video_filter opencv_wrapper)