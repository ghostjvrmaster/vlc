cmake_minimum_required(VERSION 3.10)

project(video_filter_canvas_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../canvas.c")

ConfigureModule(video_filter canvas)