cmake_minimum_required(VERSION 3.10)

project(codec_avcodec)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        avcodec
        dxva2)

ConfigureModuleGroup()