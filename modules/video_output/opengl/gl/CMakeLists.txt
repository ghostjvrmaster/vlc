cmake_minimum_required(VERSION 3.10)

project(video_output_opengl_gl_plugin)

if (HAVE_GL_GLEW_H)

    include(${vlc_MODULE_HELPER})

    file(GLOB SRC_FILES
            "../display.c"
            "../fragment_shaders.c"
            "../vout_helper.c"
            "../converter_sw.c")

    if (WINDOWS)
        set(MODULE_LIBRARIES
                opengl32)
    else ()
        set(MODULE_LIBRARIES
                GL)
    endif ()

    if (HAVE_LIBPLACEBO)
        list(APPEND MODULE_LIBRARIES
                libplacebo)
    endif ()

    ConfigureModule(video_output gl)

endif ()