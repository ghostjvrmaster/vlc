cmake_minimum_required(VERSION 3.10)

project(hw_vaapi_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "*.c"
        "../../video_chroma/copy.c")

ConfigureModule(hw vaapi_filters)