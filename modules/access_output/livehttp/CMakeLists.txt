cmake_minimum_required(VERSION 3.10)

project(access_output_livehttp_plugin)

if (HAVE_GCRYPT)

    include(${vlc_MODULE_HELPER})

    file(GLOB SRC_FILES
            "../livehttp.c")

    set(MODULE_LIBRARIES
            gcrypt
            gpg-error)

    ConfigureModule(access_output livehttp)

endif ()