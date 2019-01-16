cmake_minimum_required(VERSION 3.10)

project(audio_filter_equalizer_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../equalizer.c")

ConfigureModule(audio_filter equalizer)
