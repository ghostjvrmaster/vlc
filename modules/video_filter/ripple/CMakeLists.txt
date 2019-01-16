cmake_minimum_required(VERSION 3.10)

project(video_filter_ripple_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../ripple.c")

ConfigureModule(video_filter ripple)