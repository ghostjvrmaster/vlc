cmake_minimum_required(VERSION 3.10)

project(video_output_android)

include(${vlc_MODULE_HELPER})

list(APPEND PLUGINS
        display
        window)

ConfigureModuleGroup()