cmake_minimum_required(VERSION 3.10)

project(stream_filter_accesstweaks_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../accesstweaks.c")

ConfigureModule(stream_filter accesstweaks)