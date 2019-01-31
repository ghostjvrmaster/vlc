cmake_minimum_required(VERSION 3.10)

project(codec_avcodec_dxva2_plugin)

include(${vlc_MODULE_HELPER})

set(MODULE_INCLUDE_DIRS
        ../..)

file(GLOB SRC_FILES
        "../*.c")

file(GLOB UNUSED_SRC_FILES
        "../avcodec.c"
        "../d3d11va.c"
        "../directx_va.c"
        "../vaapi.c")

list(REMOVE_ITEM SRC_FILES ${UNUSED_SRC_FILES})

set(MODULE_LIBRARIES
        avcodec
        avutil)

ConfigureModule(codec dxva2)