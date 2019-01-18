cmake_minimum_required(VERSION 3.10)

project(mux)

include(${vlc_MODULE_HELPER})

set(SUBMODULES
        mp4)

ConfigureModuleGroup()