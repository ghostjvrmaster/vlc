cmake_minimum_required(VERSION 3.10)

project(video_chroma_yuvp_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../yuvp.c")

ConfigureModule(video_chroma yuvp)