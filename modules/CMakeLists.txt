cmake_minimum_required(VERSION 3.10)

project(modules)

include(${vlc_MODULE_HELPER})

set(SUBMODULES
        access
        audio_filter
        audio_mixer
        audio_output
        codec
        control
        demux
        gui
        hw
        keystore
        logger
        meta_engine
        misc
        packetizer
        services_discovery
        spu
        stream_filter
        text_renderer
        video_chroma
        video_filter
        video_output
        video_splitter
        visualization)

set(PLUGINS
        lua
        notify
        stream_extractor)

if (ENABLE_SOUT)
    list(APPEND SUBMODULES
            access_output
            mux
            stream_out)
endif ()

add_custom_target(${PROJECT_NAME})
foreach (submodule IN LISTS SUBMODULES)
    add_subdirectory(${submodule})
    add_dependencies(${PROJECT_NAME}
            ${submodule})
endforeach ()