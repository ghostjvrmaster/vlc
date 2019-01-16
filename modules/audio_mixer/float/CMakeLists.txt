cmake_minimum_required(VERSION 3.10)

project(audio_mixer_float_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../float.c")

ConfigureModule(audio_mixer float_mixer)