cmake_minimum_required(VERSION 3.10)

project(codec)

add_subdirectory(avcodec)

add_custom_target(codec)
add_dependencies(codec
        codec_avcodec_plugin)