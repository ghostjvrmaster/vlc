cmake_minimum_required(VERSION 3.10)

project(video_chroma_cvpx_plugin)

if (APPLE)

    include(${vlc_MODULE_HELPER})

    file(GLOB SRC_FILES
            "../cvpx.c")

    ConfigureModule(video_chroma cvpx)

endif ()