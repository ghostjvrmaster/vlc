cmake_minimum_required(VERSION 3.10)

project(gui_qt_plugin)

include(${vlc_MODULE_HELPER})

find_package(Qt5 COMPONENTS Core Gui Widgets Svg CONFIG REQUIRED)

if (WINDOWS)
    set(MODULE_INCLUDE_DIRS
            ${Qt5Gui_PRIVATE_INCLUDE_DIRS})
    add_definitions(-DUNICODE -D_UNICODE)
endif ()

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)

file(GLOB SRC_FILES
        "*.ui"
        "*.hpp"
        "*.cpp"
        "*.qrc"
        "**/*.ui"
        "**/*.cpp"
        "**/*.hpp"
        "**/**/*.ui"
        "**/**/*.cpp"
        "**/**/*.hpp")

file(GLOB WIN32_SRC_FILES
        "main_interface_win32.*")

if (!WINDOWS)
    list(REMOVE_ITEM SRC_FILES ${WIN32_SRC_FILES})
endif ()

set(MODULE_LIBRARIES
        Qt5::Core
        Qt5::Gui
        Qt5::Widgets
        Qt5::Svg)

if (WINDOWS)
    list(APPEND MODULE_LIBRARIES
            winmm
            comctl32)
endif ()

ConfigureModule(gui qt)