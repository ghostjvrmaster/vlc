cmake_minimum_required(VERSION 3.10)

project(codec)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        ddummy
        edummy)

if (HAVE_AVCODEC)
    list(APPEND PLUGINS avcodec)
endif ()

ConfigureModuleGroup()