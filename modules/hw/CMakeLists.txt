cmake_minimum_required(VERSION 3.10)

project(hw)

include(${vlc_MODULE_HELPER})

if (HAVE_VAAPI)
    list(APPEND PLUGINS vaapi)
endif ()

if (HAVE_VDPAU)
    list(APPEND SUBMODULES vdpau)
endif ()


ConfigureModuleGroup()