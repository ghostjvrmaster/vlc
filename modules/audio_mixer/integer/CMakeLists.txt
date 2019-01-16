cmake_minimum_required(VERSION 3.10)

project(audio_mixer_integer_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../integer.c")

ConfigureModule(audio_mixer integer_mixer)