cmake_minimum_required(VERSION 3.10)

project(video_chroma_chain_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../chain.c")

ConfigureModule(video_chroma chain)