cmake_minimum_required(VERSION 3.10)

project(codec_ddummy_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        ../ddummy.c)

ConfigureModule(codec ddummy)