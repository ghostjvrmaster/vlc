cmake_minimum_required(VERSION 3.10)

project(access_output_http_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../http.c")

ConfigureModule(access_output http)