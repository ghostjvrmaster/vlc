cmake_minimum_required(VERSION 3.10)

project(audio_filter_channel_mixer_headphone_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../headphone.c")

ConfigureModule(audio_filter headphone_channel_mixer)
