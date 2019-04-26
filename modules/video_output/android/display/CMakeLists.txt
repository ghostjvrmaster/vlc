cmake_minimum_required(VERSION 3.10)

project(video_output_android_display_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        ../display.c
        ../utils.c)

ConfigureModule(video_output android_display)