cmake_minimum_required(VERSION 3.10)

project(bin)

if (ENABLE_BINARIES AND NOT ANDROID)

    include(../cmake/GenerateStaticModuleList.cmake)

    include_directories(
            ${vlc_INCLUDE_DIR}
            ${vlc_INCLUDE_DIR}/vlc
            ${vlc_CONFIG_H_DIR})

    set(SRC_FILES
            override.c)

    if (WINDOWS)
        list(APPEND SRC_FILES
                winvlc.c)
    else ()
        list(APPEND SRC_FILES
                vlc.c)
    endif ()

    add_executable(vlc
            ${SRC_FILES})

    add_dependencies(vlc
            modules
            po
            share)

    target_link_libraries(vlc
            vlclib)

    if (WINDOWS)
        target_link_libraries(vlc
                kernel32
                psapi)
    elseif (LINUX)
        target_link_libraries(vlc
                dl)
    endif ()

    if (HAVE_SYS_SOCKET_H)
        set(ROOTWRAP_SRC_FILES
                rootwrap.c)

        add_executable(vlc-wrapper
                ${ROOTWRAP_SRC_FILES})
    endif ()

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

    if (NOT HAVE_DYNAMIC_MODULES)
        set(static_plugins
                control_dummy_plugin
                demux_adaptive_plugin
                access_fs_plugin
                access_http_plugin
                codec_avcodec_plugin
                logger_console_plugin
                logger_file_plugin)

        GenerateStaticModuleList(vlc static_plugins)
        GenerateStaticModuleList(vlc-cache-gen static_plugins)
        GenerateStaticModuleList(vlc-simple static_plugins)
    endif ()

    install(TARGETS vlc vlc-cache-gen vlc-simple
            RUNTIME DESTINATION ${BINDIR})

endif ()