cmake_minimum_required(VERSION 3.10)

project(video_chroma_i420_10_p010_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../i420_10_p010.c"
        "../copy.c")

ConfigureModule(video_chroma i420_10_p010)