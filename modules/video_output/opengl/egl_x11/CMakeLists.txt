cmake_minimum_required(VERSION 3.10)

project(video_output_opengl_egl_x11_plugin)

if (HAVE_EGL_GL_H)

    include(${vlc_MODULE_HELPER})

    file(GLOB SRC_FILES
            "../egl.c")

    add_definitions(-DUSE_PLATFORM_X11=1)

    set(MODULE_LIBRARIES
            X11
            GL
            EGL
            placebo)

    ConfigureModule(video_output egl_x11)

endif ()