cmake_minimum_required(VERSION 3.10)

project(video_chroma_i422_i420_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../i422_i420.c")

ConfigureModule(video_chroma i422_i420)