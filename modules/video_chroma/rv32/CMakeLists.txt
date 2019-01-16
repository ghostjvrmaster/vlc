cmake_minimum_required(VERSION 3.10)

project(video_chroma_rv32_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../rv32.c")

ConfigureModule(video_chroma rv32)