cmake_minimum_required(VERSION 3.10)

project(audio_filter_channel_mixer)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        dolby
        headphone
        mono
        remap
        simple
        spatialaudio
        trivial)

ConfigureModuleGroup()