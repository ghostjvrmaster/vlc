cmake_minimum_required(VERSION 3.10)

project(access_output)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        dummy
        file
        http
        udp)

if (HAVE_SRT_SRT_H)
    list(APPEND PLUGINS srt)
endif ()

if (HAVE_SHOUT)
    list(APPEND PLUGINS shout)
endif ()

if (HAVE_GCRYPT)
    list(APPEND PLUGINS livehttp)
endif ()

ConfigureModuleGroup()