cmake_minimum_required(VERSION 3.10)

project(codec_faad_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        ../faad.c)

ConfigureModule(codec faad)