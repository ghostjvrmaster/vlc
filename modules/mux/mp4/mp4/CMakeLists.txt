cmake_minimum_required(VERSION 3.10)

project(mux_mp4_mp4_plugin)

include(${vlc_MODULE_HELPER})

set(MODULE_INCLUDE_DIRS
        ../../)

file(GLOB SRC_FILES
        "../mp4.c"
        "../libmp4mux.c")

ConfigureModule(mux mp4)