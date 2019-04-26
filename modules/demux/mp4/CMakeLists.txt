cmake_minimum_required(VERSION 3.10)

project(demux_mp4_plugin)

include(${vlc_MODULE_HELPER})

include_directories(..)

file(GLOB SRC_FILES
        "*.c"
        "../asf/asfpacket.c")

ConfigureModule(demux mp4)