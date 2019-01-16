cmake_minimum_required(VERSION 3.10)

project(audio_filter_channel_mixer_trivial_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../trivial.c")

ConfigureModule(audio_filter trivial_channel_mixer)
