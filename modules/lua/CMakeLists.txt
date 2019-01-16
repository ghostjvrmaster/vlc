cmake_minimum_required(VERSION 3.10)

project(lua_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "*.c"
        "libs/*.c")

ConfigureModule(lua lua)