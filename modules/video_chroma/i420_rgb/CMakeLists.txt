cmake_minimum_required(VERSION 3.10)

project(video_chroma_i420_rgb_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../i420_rgb.c"
        "../i420_rgb8.c"
        "../i420_rgb16.c")

ConfigureModule(video_chroma i420_rgb)