cmake_minimum_required(VERSION 3.10)

project(audio_filter_converter_tospdif_plugin)

if (HAVE_A52DEC_A52_H)

    include(${vlc_MODULE_HELPER})

    file(GLOB SRC_FILES
            "../tospdif.c")

    ConfigureModule(audio_filter tospdif)

endif ()