cmake_minimum_required(VERSION 3.10)

project(audio_filter_converter_format_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../format.c")

ConfigureModule(audio_filter audio_format)