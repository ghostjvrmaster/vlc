cmake_minimum_required(VERSION 3.10)

project(video_filter_posterize_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../posterize.c")

ConfigureModule(video_filter posterize)