cmake_minimum_required(VERSION 3.4)

# This file will set one of the following flags, if not already set:
# MACOS, WINDOWS, LINUX, ANDROID, IOS

macro(DetectOS)
    if (NOT DEFINED OS)
        if (WIN32 OR CYGWIN)
            set(OS "windows")
        else ()
            execute_process(COMMAND uname -s
                    COMMAND cut -d_ -f1
                    OUTPUT_VARIABLE OS
                    OUTPUT_STRIP_TRAILING_WHITESPACE)
            string(TOLOWER ${OS} OS)
        endif ()
    endif ()

    # We would only ever detect MacOS, Windows, and Linux because
    # Android and iOS are cross-compiled
    if (OS STREQUAL "darwin")
        set(MACOS True)

        if (CMAKE_GENERATOR STREQUAL Xcode)
            if ("${CMAKE_BUILD_TYPE}" STREQUAL "")
                SET(IDE_BUILD_FOLDER "Debug")
            else ()
                SET(IDE_BUILD_FOLDER ${CMAKE_BUILD_TYPE})
            endif ()
        else ()
            SET(IDE_BUILD_FOLDER "")
        endif ()

        MESSAGE(STATUS "IDE_BUILD_FOLDER: ${IDE_BUILD_FOLDER}")

    elseif (OS STREQUAL "linux")
        set(LINUX True)
    elseif (OS STREQUAL "windows")
        set(WINDOWS True)
        if (CMAKE_SYSTEM_NAME STREQUAL WindowsStore)
            set(UWP True)
        endif ()
    endif ()
endmacro()

macro(ReportOS)
    if (DEFINED MACOS)
        message(STATUS "Building for macOS")
        add_definitions(-D_MACOS)
    elseif (DEFINED LINUX)
        message(STATUS "Building for Linux")
        add_definitions(-D_LINUX)
    elseif (DEFINED WINDOWS)
        message(STATUS "Building for Windows")
        add_definitions(-D_WINDOWS)
        # for windows store define this.
        if (DEFINED UWP)
            add_definitions(-D_WINDOWS_UWP)
            message(STATUS "Building for Windows UWP")
        endif ()
    elseif (DEFINED ANDROID)
        add_definitions(-D_ANDROID)
        message(STATUS "Building for Android")
    elseif (DEFINED IOS)
        add_definitions(-D_IOS)
        message(STATUS "Building for iOS")
    endif ()
endmacro()

if (CMAKE_CROSSCOMPILING)
    message(STATUS "Cross compiling")
endif ()

if (DEFINED CMAKE_TOOLCHAIN_FILE)
    message(STATUS "using toolchain file " ${CMAKE_TOOLCHAIN_FILE})
endif ()

if (NOT MACOS AND NOT WINDOWS AND NOT LINUX AND NOT ANDROID AND NOT IOS)
    DetectOS()
endif ()

ReportOS()