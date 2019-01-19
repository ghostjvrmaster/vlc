cmake_minimum_required(VERSION 3.10)

project(codec_omxil)

include(${vlc_MODULE_HELPER})

if (ANDROID)
    list(APPEND PLUGINS mediacodec)
endif ()

ConfigureModuleGroup()