cmake_minimum_required(VERSION 3.10)

project(codec)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        ddummy
        edummy)

set(SUBMODULES
        omxil)

if (HAVE_AVCODEC)
    list(APPEND SUBMODULES avcodec)
endif ()
if (IOS OR MACOS)
    list(APPEND PLUGINS videotoolbox)
endif ()

ConfigureModuleGroup()