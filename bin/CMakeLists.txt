cmake_minimum_required(VERSION 3.10)

project(bin)

include_directories(
        ${vlc_INCLUDE_DIR}
        ${vlc_INCLUDE_DIR}/vlc
        ${vlc_CONFIG_H_DIR})

set(SRC_FILES
        override.c
        vlc.c)

add_executable(vlc
        ${SRC_FILES})

add_dependencies(vlc
        modules
        po
        share)

target_link_libraries(vlc
        vlclib)

set(ROOTWRAP_SRC_FILES
        rootwrap.c)

add_executable(vlc-wrapper
        ${ROOTWRAP_SRC_FILES})

set(CACHEGEN_SRC_FILES
        cachegen.c)

add_executable(vlc-cache-gen
        ${CACHEGEN_SRC_FILES})

target_link_libraries(vlc-cache-gen
        vlclib)

set(SIMPLE_SRC_FILES
        simple.c)

add_executable(vlc-simple
        ${SIMPLE_SRC_FILES})

target_link_libraries(vlc-simple
        vlclib)

install(TARGETS vlc vlc-wrapper vlc-cache-gen vlc-simple
        RUNTIME
        DESTINATION ${BINDIR})