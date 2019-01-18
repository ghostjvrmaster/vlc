cmake_minimum_required(VERSION 3.10)

project(gui)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        qt)

if (HAVE_NCURSES)
    list(APPEND PLUGINS
            qt)
endif ()

ConfigureModuleGroup()