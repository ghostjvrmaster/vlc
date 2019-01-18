cmake_minimum_required(VERSION 3.10)

project(vlccore)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 14)

add_definitions(-DMODULE_STRING="core")

# Includes

include_directories(
        ${PROJECT_SOURCE_DIR}
        ${vlc_INCLUDE_DIR}
        ${vlc_INCLUDE_DIR}/vlc
        ${vlc_CONFIG_H_DIR}
        ${vlc_COMPAT_INCLUDE_DIR})

# Core sources

file(GLOB ROOT_SRC_FILES *.c)
file(GLOB CONFIG_SRC_FILES config/*.c)
file(GLOB EXTRAS_SRC_FILES extras/*.c)
file(GLOB INPUT_SRC_FILES input/*.c)
file(GLOB INTERFACE_SRC_FILES interface/*.c)
file(GLOB MISC_SRC_FILES misc/*.c)
file(GLOB MODULES_SRC_FILES modules/*.c)
file(GLOB NETWORK_SRC_FILES network/*.c)
file(GLOB PLAYLIST_SRC_FILES playlist/*.c)
file(GLOB TEXT_SRC_FILES text/*.c)

# Output sources

file(GLOB AUDIO_OUTPUT_SRC_FILES audio_output/*.c)
file(GLOB STREAM_OUTPUT_SRC_FILES stream_output/*.c)
file(GLOB VIDEO_OUTPUT_SRC_FILES video_output/*.c)
file(GLOB MISC_OUTPUT_SRC_FILES misc_output/*.c)

# Platform sources

file(GLOB ANDROID_SRC_FILES android/*.c)
file(GLOB DARWIN_SRC_FILES darwin/*.c)
file(GLOB LINUX_SRC_FILES linux/*.c)
file(GLOB OS2_SRC_FILES os2/*.c)
file(GLOB POSIX_SRC_FILES posix/*.c)
file(GLOB WIN32_SRC_FILES win32/*.c)

# Test sources

file(GLOB TEST_SRC_FILES test/*.c)

if (LINUX)
    file(GLOB MISSING_C_FILE "missing.c")
    list(REMOVE_ITEM ROOT_SRC_FILES ${MISSING_C_FILE})

    set(PLATFORM_SRC_FILES ${LINUX_SRC_FILES})
    file(GLOB EXTRA_POSIX_SRC_FILES posix/getaddrinfo.c)
    list(REMOVE_ITEM POSIX_SRC_FILES ${EXTRA_POSIX_SRC_FILES})
    list(APPEND PLATFORM_SRC_FILES ${POSIX_SRC_FILES})

    set(PLATFORM_LINK_LIBRARIES
            pthread
            gcrypt)

    if (HAVE_LIBANL)
        list(APPEND PLATFORM_LINK_LIBRARIES
                anl)
    endif ()
    if (HAVE_DYNAMIC_PLUGINS)
        list(APPEND PLATFORM_LINK_LIBRARIES
                dl)
    endif ()
elseif (WINDOWS)
    file(GLOB UPDATE_FILES
            "misc/update.c"
            "misc/update_crypto.c")
    list(REMOVE_ITEM MISC_SRC_FILES ${UPDATE_FILES})

    set(PLATFORM_SRC_FILES ${WIN32_SRC_FILES})

    set(PLATFORM_LINK_LIBRARIES
            mingw32
            ws2_32
            pthread)
elseif (MACOS)
    set(PLATFORM_SRC_FILES ${DARWIN_SRC_FILES})
elseif (ANDROID)
    set(PLATFORM_SRC_FILES ${ANDROID_SRC_FILES})
endif ()

if (HAVE_DYNAMIC_PLUGINS)
    set(LIBRARY_MODE "SHARED")
endif ()

add_library(vlccore ${LIBRARY_MODE}
        ${ROOT_SRC_FILES}
        ${CONFIG_SRC_FILES}
        ${EXTRAS_SRC_FILES}
        ${MODULES_SRC_FILES}
        ${INTERFACE_SRC_FILES}
        ${PLAYLIST_SRC_FILES}
        ${INPUT_SRC_FILES}
        ${AUDIO_OUTPUT_SRC_FILES}
        ${STREAM_OUTPUT_SRC_FILES}
        ${VIDEO_OUTPUT_SRC_FILES}
        ${MISC_OUTPUT_SRC_FILES}
        ${NETWORK_SRC_FILES}
        ${TEXT_SRC_FILES}
        ${MISC_SRC_FILES}
        ${PLATFORM_SRC_FILES})

target_link_libraries(vlccore
        ${PLATFORM_LINK_LIBRARIES}
        compat)

if (HAVE_IDN)
    target_link_libraries(vlccore
            ${libidn_LIBRARIES})
endif ()

if (HAVE_DYNAMIC_PLUGINS)
    install(TARGETS vlccore
            RUNTIME DESTINATION ${BINDIR}
            LIBRARY DESTINATION ${LIBDIR})
endif ()