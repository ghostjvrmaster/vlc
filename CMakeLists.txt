cmake_minimum_required(VERSION 3.10)

project(vlc)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 14)

set(vlc_CONFIG_H_DIR ${PROJECT_BINARY_DIR}/config
        CACHE STRING "config.h location" FORCE)

set(vlc_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/include
        CACHE STRING "include location" FORCE)

set(vlc_MODULE_HELPER ${PROJECT_SOURCE_DIR}/cmake/ModuleHelper.cmake)

include(cmake/Configure.cmake)

add_subdirectory(compat)
add_subdirectory(lib)
add_subdirectory(modules)
add_subdirectory(po)
add_subdirectory(share)
add_subdirectory(bin)
add_subdirectory(src)