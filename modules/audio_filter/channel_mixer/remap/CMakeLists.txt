cmake_minimum_required(VERSION 3.10)

project(audio_filter_channel_mixer_remap_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../remap.c")

ConfigureModule(audio_filter remap)
