cmake_minimum_required(VERSION 3.10)

project(stream_extractor_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "archive.c")

ConfigureModule(stream_extractor stream_extractor)