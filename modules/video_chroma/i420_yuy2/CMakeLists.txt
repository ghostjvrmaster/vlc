cmake_minimum_required(VERSION 3.10)

project(video_chroma_i420_yuy2_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../i420_yuy2.c")

add_definitions(-DMODULE_NAME_IS_i420_yuy2)

ConfigureModule(video_chroma i420_yuy2)