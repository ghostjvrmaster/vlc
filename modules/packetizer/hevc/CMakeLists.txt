cmake_minimum_required(VERSION 3.10)

project(packetizer_hevc_plugin)

include(${vlc_MODULE_HELPER})

include_directories(
        ..)

file(GLOB SRC_FILES
        "../hevc.c"
        "../hevc_nal.c"
        "../hxxx_sei.c"
        "../hxxx_common.c")

ConfigureModule(packetizer packetizer_hevc)