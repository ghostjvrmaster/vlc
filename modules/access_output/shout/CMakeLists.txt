cmake_minimum_required(VERSION 3.10)

project(access_output_shout_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../shout.c")

ConfigureModule(access_output shout)