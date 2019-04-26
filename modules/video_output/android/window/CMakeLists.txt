cmake_minimum_required(VERSION 3.10)

project(video_output_android_window_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        ../utils.c
        ../window.c)

ConfigureModule(video_output android_window)