cmake_minimum_required(VERSION 3.10)

project(packetizer_h264_plugin)

include(${vlc_MODULE_HELPER})

set(MODULE_INCLUDE_DIRS
        ${CMAKE_CURRENT_LIST_DIR}/..)

file(GLOB SRC_FILES
        "../h264.c"
        "../h264_nal.c"
        "../h264_slice.c"
        "../hxxx_common.c"
        "../hxxx_sei.c")

ConfigureModule(packetizer packetizer_h264)