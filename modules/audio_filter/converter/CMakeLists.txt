cmake_minimum_required(VERSION 3.10)

project(audio_filter_converter)

add_subdirectory(format)
add_subdirectory(tospdif)

add_custom_target(audio_filter_converter)
add_dependencies(audio_filter_converter
        audio_filter_converter_format_plugin)

if (HAVE_A52DEC_A52_H)
    add_dependencies(audio_filter_converter
            audio_filter_converter_tospdif_plugin)
endif ()