cmake_minimum_required(VERSION 3.10)

project(hw)

include(${vlc_MODULE_HELPER})

set(SUBMODULES
        vdpau)

set(PLUGINS
        vaapi)

ConfigureModuleGroup()