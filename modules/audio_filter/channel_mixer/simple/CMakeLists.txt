cmake_minimum_required(VERSION 3.10)

project(audio_filter_channel_mixer_simple_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../simple.c")

ConfigureModule(audio_filter simple_channel_mixer)
