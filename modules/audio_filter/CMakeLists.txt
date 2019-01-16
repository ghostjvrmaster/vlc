cmake_minimum_required(VERSION 3.10)

project(audio_filter)

include(${vlc_MODULE_HELPER})

set(SUBMODULES
        channel_mixer
        converter
        resampler)

set(PLUGINS
        compressor
        equalizer
        param_eq
        scaletempo)

ConfigureModuleGroup()