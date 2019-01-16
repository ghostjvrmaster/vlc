cmake_minimum_required(VERSION 3.10)

project(video_filter_gradfun_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../gradfun.c")

ConfigureModule(video_filter gradfun)