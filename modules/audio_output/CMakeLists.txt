cmake_minimum_required(VERSION 3.10)

project(audio_output)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        adummy
        amem)

if (HAVE_ALSA)
    list(APPEND PLUGINS alsa)
endif ()

if (ENABLE_OSS AND (HAVE_SOUNDCARD_H OR HAVE_SYS_SOUNDCARD_H))
    list(APPEND PLUGINS oss)
endif ()

if (HAVE_PULSE)
    list(APPEND PLUGINS pulse)
endif ()

ConfigureModuleGroup()