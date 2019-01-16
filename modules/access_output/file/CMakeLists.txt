cmake_minimum_required(VERSION 3.10)

project(access_output_file_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../file.c")

ConfigureModule(access_output file)