cmake_minimum_required(VERSION 3.10)

project(video_output_vmem_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../vmem.c")

ConfigureModule(video_output vmem)