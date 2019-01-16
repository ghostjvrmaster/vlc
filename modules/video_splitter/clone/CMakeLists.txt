cmake_minimum_required(VERSION 3.10)

project(video_splitter_clone_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../clone.c")

ConfigureModule(video_splitter clone)