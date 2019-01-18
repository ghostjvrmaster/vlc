cmake_minimum_required(VERSION 3.10)

project(mux_mp4)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        mp4)

ConfigureModuleGroup()

add_subdirectory(vlc_libmp4mux)
add_dependencies(${PROJECT_NAME}
        vlc_libmp4mux)