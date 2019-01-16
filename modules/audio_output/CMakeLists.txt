cmake_minimum_required(VERSION 3.10)

project(audio_output)

add_subdirectory(adummy)
add_subdirectory(alsa)
add_subdirectory(amem)
add_subdirectory(oss)
add_subdirectory(pulse)

add_custom_target(audio_output)
add_dependencies(audio_output
        audio_output_adummy_plugin
        audio_output_alsa_plugin
        audio_output_amem_plugin
        audio_output_pulse_plugin)

if (ENABLE_OSS AND (HAVE_SOUNDCARD_H OR HAVE_SYS_SOUNDCARD_H))
    add_dependencies(audio_output audio_output_oss_plugin)
endif ()