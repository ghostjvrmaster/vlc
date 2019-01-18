cmake_minimum_required(VERSION 3.10)

project(stream_filter_inflate_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../inflate.c")

set(MODULE_LIBRARIES
        ${zlib_LIBRARIES})

ConfigureModule(stream_filter inflate)