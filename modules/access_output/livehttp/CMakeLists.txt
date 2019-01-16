cmake_minimum_required(VERSION 3.10)

project(access_output_livehttp_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../livehttp.c")

ConfigureModule(access_output livehttp)