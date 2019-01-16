cmake_minimum_required(VERSION 3.10)

project(video_filter_croppadd_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../croppadd.c")

ConfigureModule(video_filter croppadd)