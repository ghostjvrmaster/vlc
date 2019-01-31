cmake_minimum_required(VERSION 3.10)

project(demux_adaptive_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
        "*.cpp"
        "http/*.cpp"
        "logic/*.cpp"
        "mp4/*.cpp"
        "playlist/*.cpp"
        "plumbing/*.cpp"
        "tools/*.cpp"
        "xml/*.cpp"
        "../hls/*.cpp"
        "../hls/playlist/*.cpp"
        "../dash/*.cpp"
        "../dash/mp4/*.cpp"
        "../dash/mpd/*.cpp"
        "../mp4/libmp4.c"
        "../smooth/*.cpp"
        "../smooth/mp4/*.cpp"
        "../smooth/playlist/*.cpp"
        "../../mux/mp4/libmp4mux.c"
        "../../packetizer/hxxx_sei.c"
        "../../packetizer/hxxx_nal.c"
        "../../packetizer/hxxx_common.c"
        "../../packetizer/hevc_nal.c"
        "../../packetizer/h264_slice.c"
        "../../packetizer/h264_nal.c")

set(MODULE_INCLUDE_DIRS
        ${CMAKE_CURRENT_LIST_DIR}
        ${CMAKE_CURRENT_LIST_DIR}/..
        http
        logic
        mp4
        playlist
        plumbing
        tools
        xml
        ../dash
        ../hls
        ../smooth)

set(MODULE_LIBRARIES
        ${zlib_LIBRARIES})

if (HAVE_GCRYPT)
    list(APPEND MODULE_LIBRARIES gcrypt)
endif ()

ConfigureModule(demux adaptive)