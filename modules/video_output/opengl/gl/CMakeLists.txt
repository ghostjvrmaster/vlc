cmake_minimum_required(VERSION 3.10)

project(video_output_opengl_gl_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../display.c"
        "../fragment_shaders.c"
        "../vout_helper.c"
        "../converter_sw.c")

set(MODULE_LIBRARIES
        GL
        placebo)

ConfigureModule(video_output gl)