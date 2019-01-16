cmake_minimum_required(VERSION 3.10)

project(audio_filter_scaletempo_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../scaletempo.c")

ConfigureModule(audio_filter scaletempo)