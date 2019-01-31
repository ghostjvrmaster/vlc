cmake_minimum_required(VERSION 3.10)

project(codec_avcodec_avcodec_plugin)

include(${vlc_MODULE_HELPER})

set(MODULE_INCLUDE_DIRS
        ../..)

file(GLOB SRC_FILES
        "../*.c")

file(GLOB UNUSED_SRC_FILES
        "../d3d11va.c"
        "../directx_va.c"
        "../dxva2.c"
        "../vaapi.c")

list(REMOVE_ITEM SRC_FILES ${UNUSED_SRC_FILES})

set(MODULE_LIBRARIES
        avcodec
        avutil)

ConfigureModule(codec avcodec)