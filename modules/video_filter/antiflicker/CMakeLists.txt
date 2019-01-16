cmake_minimum_required(VERSION 3.10)

project(video_filter_antiflicker_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../antiflicker.c")

ConfigureModule(video_filter antiflicker)