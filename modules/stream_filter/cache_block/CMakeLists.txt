cmake_minimum_required(VERSION 3.10)

project(stream_filter_cache_block_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../cache_block.c")

ConfigureModule(stream_filter cache_block)