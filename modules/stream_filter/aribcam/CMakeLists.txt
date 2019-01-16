cmake_minimum_required(VERSION 3.10)

project(stream_filter_aribcam_plugin)

if (HAVE_ARIBB25)

    include(${vlc_MODULE_HELPER})

    file(GLOB SRC_FILES
            "../aribcam.c")

    ConfigureModule(stream_filter aribcam)

endif ()