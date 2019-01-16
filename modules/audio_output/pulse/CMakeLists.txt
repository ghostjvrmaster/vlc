cmake_minimum_required(VERSION 3.10)

project(audio_output_pulse_plugin)

include(${vlc_MODULE_HELPER})

set(MODULE_INCLUDE_DIRS
        ../../)

file(GLOB SRC_FILES
        "../vlcpulse.c"
        "../pulse.c")

set(MODULE_LIBRARIES
        pulse)

ConfigureModule(audio_output pulse)