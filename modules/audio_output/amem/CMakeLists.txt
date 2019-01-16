cmake_minimum_required(VERSION 3.10)

project(audio_output_amem_plugin)

include(${vlc_MODULE_HELPER})

set(MODULE_INCLUDE_DIRS
        ../../)

file(GLOB SRC_FILES
        "../amem.c")

ConfigureModule(audio_output amem)