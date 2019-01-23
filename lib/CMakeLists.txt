cmake_minimum_required(VERSION 3.10)

project(lib)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 14)

set(CMAKE_POSITION_INDEPENDENT_CODE ON)

include_directories(
        ${vlc_INCLUDE_DIR}
        ${vlc_INCLUDE_DIR}/vlc
        ${vlc_CONFIG_H_DIR})

file(GLOB SRC_FILES *.c)

if (HAVE_DYNAMIC_PLUGINS)
    set(LIBRARY_MODE "SHARED")
endif ()

add_library(vlclib ${LIBRARY_MODE}
        ${SRC_FILES})

set_target_properties(vlclib PROPERTIES OUTPUT_NAME "vlc")

target_link_libraries(vlclib
        -lpthread
        -lm
        vlccore)

install(TARGETS vlclib
        RUNTIME DESTINATION "${BINDIR}"
        LIBRARY DESTINATION "${LIBDIR}"
        ARCHIVE DESTINATION "${ARCHIVEDIR}")

file(GLOB PLUGIN_HEADER_SRC_FILES
        ../include/*.h)
file(GLOB CORE_HEADER_SRC_FILES
        ../include/vlc/*.h)
install(FILES ${PLUGIN_HEADER_SRC_FILES}
        DESTINATION "${INCLUDEDIR}")
install(FILES ${CORE_HEADER_SRC_FILES}
        DESTINATION "${INCLUDEDIR}/vlc")