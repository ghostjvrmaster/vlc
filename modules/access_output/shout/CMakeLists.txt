cmake_minimum_required(VERSION 3.10)

project(access_output_shout_plugin)

if (HAVE_SHOUT)

    include(${vlc_MODULE_HELPER})

    file(GLOB SRC_FILES
            "../shout.c")

    ConfigureModule(access_output shout)

endif ()