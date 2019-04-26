cmake_minimum_required(VERSION 3.10)

project(misc)

include(${vlc_MODULE_HELPER})

if (HAVE_LIBXML)
    list(APPEND PLUGINS xml)
endif ()

ConfigureModuleGroup()