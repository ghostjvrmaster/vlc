cmake_minimum_required(VERSION 3.10)

project(audio_filter_resampler_bandlimited_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../bandlimited.c")

ConfigureModule(audio_filter bandlimited_resampler)