cmake_minimum_required(VERSION 3.10)

project(control)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        dummy)

ConfigureModuleGroup()

add_subdirectory(vlc_libmotion)

add_dependencies(${PROJECT_NAME}
        vlc_libmotion)