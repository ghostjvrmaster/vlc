cmake_minimum_required(VERSION 3.10)

project(video_filter_colorthres_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../colorthres.c")

ConfigureModule(video_filter colorthres)