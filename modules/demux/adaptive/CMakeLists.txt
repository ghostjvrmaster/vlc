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
        "../smooth/*.cpp"
        "../smooth/mp4/*.cpp"
        "../smooth/playlist/*.cpp")

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

ConfigureModule(demux adaptive)