cmake_minimum_required(VERSION 3.10)

project(video_output_opengl)

include(${vlc_MODULE_HELPER})

if (HAVE_GL_GLEW_H)
    list(APPEND PLUGINS gl)
endif ()

if (HAVE_EGL_GL_H)
    list(APPEND PLUGINS egl_x11)
endif ()

if (HAVE_VDPAU)
    list(APPEND PLUGINS glconv_vdpau)
endif ()

ConfigureModuleGroup()