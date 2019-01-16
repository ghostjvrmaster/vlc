cmake_minimum_required(VERSION 3.10)

project(video_filter_motiondetect_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../motiondetect.c")

ConfigureModule(video_filter motiondetect)