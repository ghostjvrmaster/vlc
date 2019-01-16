cmake_minimum_required(VERSION 3.10)

project(video_chroma_omxdl_plugin)

if (ENABLE_OMX)

    include(${vlc_MODULE_HELPER})

    file(GLOB SRC_FILES
            "../omxdl.c")

    ConfigureModule(video_chroma chroma_omx)

endif ()