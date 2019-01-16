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
list(REMOVE_ITEM SRC_FILES ${NATIVE_CLIENT_SRC_FILES})

add_library(compat ${SRC_FILES})