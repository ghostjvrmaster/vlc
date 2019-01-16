cmake_minimum_required(VERSION 3.10)

project(video_chroma_yuy2_i422_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../yuy2_i422.c")

ConfigureModule(video_chroma yuy2_i422)