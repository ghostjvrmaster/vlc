cmake_minimum_required(VERSION 3.10)

project(gui_ncurses_plugin)

if (HAVE_NCURSESW)

    include(${vlc_MODULE_HELPER})

    set(MODULE_INCLUDE_DIRS
            ${ncursesw_INCLUDE_DIRS})

    set(SRC_FILES ../ncurses.c)

    set(MODULE_LIBRARIES
            ${ncursesw_LIBRARIES})

    if (WINDOWS)
        list(APPEND MODULE_LIBRARIES
                winmm)
    endif ()

    ConfigureModule(gui ncurses)

endif ()