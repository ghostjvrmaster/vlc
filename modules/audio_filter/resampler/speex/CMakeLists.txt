cmake_minimum_required(VERSION 3.10)

project(audio_filter_resampler_speex_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../speex.c")

set(MODULE_LIBRARIES
        speexdsp)

ConfigureModule(audio_filter speex_resampler)