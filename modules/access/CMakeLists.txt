cmake_minimum_required(VERSION 3.10)

project(access)

include(${vlc_MODULE_HELPER})

list(APPEND PLUGINS
        fs
        http
        rtsp)

if(HAVE_LIVE555)
    list(APPEND PLUGINS
            live555)
endif()

ConfigureModuleGroup()