cmake_minimum_required(VERSION 3.10)

project(stream_filter_record_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../record.c")

ConfigureModule(stream_filter record)