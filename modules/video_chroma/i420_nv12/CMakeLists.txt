cmake_minimum_required(VERSION 3.10)

project(video_chroma_i420_nv12_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../i420_nv12.c")

ConfigureModule(video_chroma i420_nv12)