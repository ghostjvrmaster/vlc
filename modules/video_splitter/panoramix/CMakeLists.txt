cmake_minimum_required(VERSION 3.10)

project(video_splitter_panoramix_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../panoramix.c")

ConfigureModule(video_splitter panoramix)