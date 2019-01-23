cmake_minimum_required(VERSION 3.10)

project(codec_videotoolbox_plugin)

if (IOS OR MACOS)

    include(${vlc_MODULE_HELPER})

    set(MODULE_INCLUDE_DIRS
            ..
            ../..)

    file(GLOB SRC_FILES
            ../videotoolbox.m
            ../vt_utils.c
            ../../packetizer/h*.c)

    set(MODULE_LIBRARIES
            Foundation
            VideoToolbox
            CoreMedia
            CoreVideo)

    ConfigureModule(codec videotoolbox)

endif ()