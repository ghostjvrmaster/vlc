cmake_minimum_required(VERSION 3.10)

project(audio_output_alsa_plugin)

include(${vlc_MODULE_HELPER})

set(MODULE_INCLUDE_DIRS
        ../../)

file(GLOB SRC_FILES
        "../alsa.c")

set(MODULE_LIBRARIES
        asound)

ConfigureModule(audio_output alsa)