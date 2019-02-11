cmake_minimum_required(VERSION 3.10)

project(audio_filter_resampler_src_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../src.c")

set(MODULE_INCLUDE_DIRS
        ${samplerate_INCLUDE_DIRS})

set(MODULE_LIBRARIES
        samplerate)

ConfigureModule(audio_filter samplerate)