cmake_minimum_required(VERSION 3.10)

project(video_filter_blendbench_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../blendbench.c")

ConfigureModule(video_filter blendbench)