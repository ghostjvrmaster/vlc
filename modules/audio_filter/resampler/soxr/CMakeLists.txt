cmake_minimum_required(VERSION 3.10)

project(audio_filter_resampler_soxr_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../soxr.c")

set(MODULE_LIBRARIES
        soxr)

ConfigureModule(audio_filter soxr)