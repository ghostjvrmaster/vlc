cmake_minimum_required(VERSION 3.10)

project(video_filter_hqdn3d_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../hqdn3d.c")

ConfigureModule(video_filter hqdn3d)