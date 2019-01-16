cmake_minimum_required(VERSION 3.10)

project(video_filter_extract_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../extract.c")

ConfigureModule(video_filter extract)