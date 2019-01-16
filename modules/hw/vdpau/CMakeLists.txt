cmake_minimum_required(VERSION 3.10)

project(hw_vdpau)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        adjust
        avcodec
        chroma
        deinterlace
        display
        sharpen)

ConfigureModuleGroup()

add_subdirectory(vlc_vdpau)
add_dependencies(${PROJECT_NAME}
        vlc_vdpau)