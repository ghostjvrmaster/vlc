cmake_minimum_required(VERSION 3.10)

project(demux)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        adaptive)

ConfigureModuleGroup()

add_subdirectory(mp4)
add_dependencies(${PROJECT_NAME}
        vlc_libmp4)