cmake_minimum_required(VERSION 3.10)

project(stream_filter_prefetch_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../prefetch.c")

ConfigureModule(stream_filter prefetch)