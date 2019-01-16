cmake_minimum_required(VERSION 3.10)

project(video_filter_magnify_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../magnify.c")

ConfigureModule(video_filter magnify)