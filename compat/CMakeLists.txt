cmake_minimum_required(VERSION 3.10)

project(compat)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 14)

include_directories(
        ${vlc_INCLUDE_DIR}
        ${vlc_INCLUDE_DIR}/vlc
        ${vlc_CONFIG_H_DIR})

file(GLOB SRC_FILES *.c)

file(GLOB NATIVE_CLIENT_SRC_FILES
        flockfile.c
        freeaddrinfo.c
        getpid.c
        lldiv.c
        localtime_r.c
        pathconf.c
        poll.c
        recvmsg.c
        sendmsg.c
        sigwait.c)

if (WINDOWS)
    file(GLOB WINDOWS_REMOVE_ITEMS
            asprintf.c
            strcasecmp.c
            strtof.c
            vasprintf.c
            swab.c)

    list(REMOVE_ITEM SRC_FILES
            ${NATIVE_CLIENT_SRC_FILES}
            ${WINDOWS_REMOVE_ITEMS})

    file(GLOB WINDOWS_NEEDED_ITEMS
            localtime_r.c
            poll.c
            sendmsg.c
            recvmsg.c
            flockfile.c)

    add_compile_options("-Wno-unused-result")

    list(APPEND SRC_FILES
            ${WINDOWS_NEEDED_ITEMS})

    set(PLATFORM_LINK_LIBRARIES
            ws2_32)
elseif (ANDROID)
    file(GLOB ANDROID_REMOVE_ITEMS
            asprintf.c
            atoll.c
            dirfd.c
            fdopendir.c
            getdelim.c
            gmtime_r.c
            rewind.c
            setenv.c
            strcasecmp.c
            strtoll.c
            timegm.c)
    list(REMOVE_ITEM SRC_FILES
            ${NATIVE_CLIENT_SRC_FILES}
            ${ANDROID_REMOVE_ITEMS})
else ()
    list(REMOVE_ITEM SRC_FILES ${NATIVE_CLIENT_SRC_FILES})
endif ()

add_library(compat ${SRC_FILES})

target_link_libraries(compat
        ${PLATFORM_LINK_LIBRARIES})

install(TARGETS compat
        ARCHIVE DESTINATION ${ARCHIVEDIR})