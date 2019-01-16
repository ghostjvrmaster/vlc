cmake_minimum_required(VERSION 3.10)

project(audio_mixer)

add_subdirectory(float)
add_subdirectory(integer)

add_custom_target(audio_mixer)
add_dependencies(audio_mixer
        audio_mixer_float_plugin
        audio_mixer_integer_plugin)