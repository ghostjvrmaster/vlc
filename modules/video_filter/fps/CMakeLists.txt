cmake_minimum_required(VERSION 3.10)

project(video_filter_fps_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../fps.c")

ConfigureModule(video_filter fps)