cmake_minimum_required(VERSION 3.10)

project(video_output_opengl_glconv_vdpau_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../converter_vdpau.c")

set(MODULE_LIBRARIES
        vlc_vdpau
        -lvdpau
        X11)

ConfigureModule(video_output glconv_vdpau)