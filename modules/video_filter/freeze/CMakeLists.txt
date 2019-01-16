cmake_minimum_required(VERSION 3.10)

project(video_filter_freeze_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../freeze.c")

ConfigureModule(video_filter freeze)