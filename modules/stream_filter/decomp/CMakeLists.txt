cmake_minimum_required(VERSION 3.10)

project(stream_filter_decomp_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../decomp.c")

ConfigureModule(stream_filter decomp)