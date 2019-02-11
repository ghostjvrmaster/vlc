cmake_minimum_required(VERSION 3.10)

project(gui)

include(${vlc_MODULE_HELPER})

if (NOT ANDROID AND NOT IOS)
    list(APPEND PLUGINS qt)
endif ()

if (HAVE_NCURSESW AND NOT WINDOWS)
    list(APPEND PLUGINS
            ncurses)
endif ()

ConfigureModuleGroup()