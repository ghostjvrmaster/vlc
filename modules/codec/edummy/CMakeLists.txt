cmake_minimum_required(VERSION 3.10)

project(codec_edummy_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        ../edummy.c)

ConfigureModule(codec edummy)