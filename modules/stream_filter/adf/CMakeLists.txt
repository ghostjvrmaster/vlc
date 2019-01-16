cmake_minimum_required(VERSION 3.10)

project(stream_filter_adf_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../adf.c")

ConfigureModule(stream_filter adf)