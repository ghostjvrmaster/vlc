cmake_minimum_required(VERSION 3.10)

project(packetizer)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        h264
        hevc
        mpeg4audio
        mpeg4video)

ConfigureModuleGroup()