cmake_minimum_required(VERSION 3.10)

project(video_output_opengl)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        egl_x11;
        gl;
        glconv_vdpau;)

ConfigureModuleGroup()