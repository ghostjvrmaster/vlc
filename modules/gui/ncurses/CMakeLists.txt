cmake_minimum_required(VERSION 3.10)

project(gui_ncurses_plugin)

if (HAVE_NCURSESW)

    include(${vlc_MODULE_HELPER})

    set(SRC_FILES ../ncurses.c)

    set(MODULE_LIBRARIES
            ${ncursesw_LIBRARIES})

    ConfigureModule(gui ncurses)

endif ()