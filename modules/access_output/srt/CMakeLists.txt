cmake_minimum_required(VERSION 3.10)

project(access_output_srt_plugin)

if (HAVE_SRT_SRT_H)

    include(${vlc_MODULE_HELPER})

    file(GLOB SRC_FILES
            "../srt.c")

    ConfigureModule(access_output srt)

endif ()