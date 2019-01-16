cmake_minimum_required(VERSION 3.10)

project(hw_vdpau_deinterlace_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../deinterlace.c"
        "../picture.c")

set(MODULE_LIBRARIES
        vlc_vdpau)

ConfigureModule(hw vdpau_deinterlace)