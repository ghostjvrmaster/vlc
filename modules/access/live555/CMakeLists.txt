cmake_minimum_required(VERSION 3.10)

project(access_live555_plugin)

include(${vlc_MODULE_HELPER})

# Sources

if (MINGW)
    include_directories(
            c:/msys64/usr/local/include/liveMedia
            c:/msys64/usr/local/include/BasicUsageEnvironment
            c:/msys64/usr/local/include/UsageEnvironment
            c:/msys64/usr/local/include/groupsock)
endif ()

file(GLOB SRC_FILES
     ../live555.cpp
     ../mms/asf.c
     ../mms/buffer.c)

ConfigureModule(access live555)