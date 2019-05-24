cmake_minimum_required(VERSION 3.10)

project(misc_securetransport_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
     "../securetransport.c")

ConfigureModule(misc securetransport)