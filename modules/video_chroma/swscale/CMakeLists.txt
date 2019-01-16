cmake_minimum_required(VERSION 3.10)

project(video_chroma_swscale_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../swscale.c"
        "../../codec/avcodec/chroma.c")

set(MODULE_LIBRARIES
        swscale)

ConfigureModule(video_chroma swscale)