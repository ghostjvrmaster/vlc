cmake_minimum_required(VERSION 3.10)

project(vlc_libmotion)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 14)

include_directories(
        ${vlc_INCLUDE_DIR}
        ${vlc_INCLUDE_DIR}/vlc
        ${vlc_CONFIG_H_DIR})

file(GLOB SRC_FILES
        "../motionlib.c")

add_library(${PROJECT_NAME} ${SRC_FILES})