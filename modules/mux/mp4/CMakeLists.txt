cmake_minimum_required(VERSION 3.10)

project(mux_mp4)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        mp4)

ConfigureModuleGroup()