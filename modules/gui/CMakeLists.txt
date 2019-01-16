cmake_minimum_required(VERSION 3.10)

project(gui)

add_subdirectory(ncurses)
add_subdirectory(qt)

add_custom_target(gui)
add_dependencies(gui
        gui_ncurses_plugin
        gui_qt_plugin)