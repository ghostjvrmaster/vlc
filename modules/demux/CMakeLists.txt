cmake_minimum_required(VERSION 3.10)

add_subdirectory(adaptive)

add_custom_target(demux)
add_dependencies(demux
        demux_adaptive_plugin)