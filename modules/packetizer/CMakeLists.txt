cmake_minimum_required(VERSION 3.10)

project(packetizer)

include(${vlc_MODULE_HELPER})

ConfigureModuleGroup()

add_subdirectory(vlc_libh264)

add_dependencies(${PROJECT_NAME}
        vlc_libh264)