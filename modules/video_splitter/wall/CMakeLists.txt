cmake_minimum_required(VERSION 3.10)

project(video_splitter_wall_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../wall.c")

ConfigureModule(video_splitter wall)