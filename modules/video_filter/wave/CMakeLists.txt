cmake_minimum_required(VERSION 3.10)

project(video_filter_wave_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../wave.c")

ConfigureModule(video_filter wave)