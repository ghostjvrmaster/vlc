cmake_minimum_required(VERSION 3.10)

project(codec_avcodec)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        avcodec)

if (HAVE_D3D9_H OR HAVE_D3D11_H)
    list(APPEND PLUGINS dxva2)
endif ()

ConfigureModuleGroup()