cmake_minimum_required(VERSION 3.10)

project(video_filter_motionblur_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../motionblur.c")

ConfigureModule(video_filter motionblur)