cmake_minimum_required(VERSION 3.10)

project(control_dummy_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../dummy.c")

ConfigureModule(control dummy)