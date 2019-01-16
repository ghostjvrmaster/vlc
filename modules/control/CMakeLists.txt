cmake_minimum_required(VERSION 3.10)

project(control)

add_subdirectory(dummy)

add_custom_target(control)
add_dependencies(control
        control_dummy_plugin)