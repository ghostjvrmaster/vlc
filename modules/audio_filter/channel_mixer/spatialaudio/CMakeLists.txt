cmake_minimum_required(VERSION 3.10)

project(audio_filter_channel_mixer_spatialaudio_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../spatialaudio.cpp")

set(MODULE_LIBRARIES
        spatialaudio)

ConfigureModule(audio_filter spatialaudio)
