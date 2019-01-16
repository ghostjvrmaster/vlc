cmake_minimum_required(VERSION 3.10)

project(access_output_udp_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../udp.c")

ConfigureModule(access_output udp)