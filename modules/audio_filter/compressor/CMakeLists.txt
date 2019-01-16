cmake_minimum_required(VERSION 3.10)

project(audio_filter_compressor_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../compressor.c")

ConfigureModule(audio_filter compressor)