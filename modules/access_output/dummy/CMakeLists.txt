cmake_minimum_required(VERSION 3.10)

project(access_output_dummy_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../dummy.c")

ConfigureModule(access_output dummy)