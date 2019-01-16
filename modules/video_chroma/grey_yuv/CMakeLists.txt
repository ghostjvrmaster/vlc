cmake_minimum_required(VERSION 3.10)

project(video_chroma_grey_yuv_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../grey_yuv.c")

ConfigureModule(video_chroma grey_yuv)