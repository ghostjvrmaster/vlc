cmake_minimum_required(VERSION 3.10)

project(stream_filter_hds_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "hds.c")

ConfigureModule(stream_filter hds)