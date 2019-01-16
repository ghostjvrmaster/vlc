cmake_minimum_required(VERSION 3.10)

project(audio_filter_channel_mixer_dolby_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../dolby.c")

ConfigureModule(audio_filter dolby_surround_decoder)
