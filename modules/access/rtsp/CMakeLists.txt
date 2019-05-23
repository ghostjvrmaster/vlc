cmake_minimum_required(VERSION 3.10)

project(access_rtsp_plugin)

include(${vlc_MODULE_HELPER})

# Sources

file(GLOB SRC_FILES *.c)

ConfigureModule(access rtsp)