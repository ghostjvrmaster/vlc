cmake_minimum_required(VERSION 3.10)

project(vlc_libh264)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 14)

include_directories(
        ${vlc_INCLUDE_DIR}
        ${vlc_INCLUDE_DIR}/vlc
        ${vlc_CONFIG_H_DIR})

file(GLOB SRC_FILES
        "../h264_nal.c"
        "../h264_slice.c"
        "../hevc_nal.c"
        "../hxxx_common.c"
        "../hxxx_nal.c"
        "../hxxx_sei.c")

add_library(${PROJECT_NAME} ${SRC_FILES})