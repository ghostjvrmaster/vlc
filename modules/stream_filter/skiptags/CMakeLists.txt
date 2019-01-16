cmake_minimum_required(VERSION 3.10)

project(stream_filter_skiptags_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../skiptags.c")

ConfigureModule(stream_filter skiptags)