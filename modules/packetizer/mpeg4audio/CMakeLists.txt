cmake_minimum_required(VERSION 3.10)

project(packetizer_mpeg4audio_plugin)

include(${vlc_MODULE_HELPER})

include_directories(
        ..)

file(GLOB SRC_FILES
        "../mpeg4audio.c")

ConfigureModule(packetizer packetizer_mpeg4audio)