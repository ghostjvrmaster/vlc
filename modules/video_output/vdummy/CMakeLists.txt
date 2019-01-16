cmake_minimum_required(VERSION 3.10)

project(video_output_vdummy_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../vdummy.c")

ConfigureModule(video_output vdummy)