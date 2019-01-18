cmake_minimum_required(VERSION 3.10)

project(access_fs_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "../directory.c"
        "../fs.c"
        "../file.c")

if (WINDOWS)
    set(MODULE_LIBRARIES
            shlwapi)
endif ()

ConfigureModule(access filesystem)