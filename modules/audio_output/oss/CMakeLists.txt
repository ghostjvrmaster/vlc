cmake_minimum_required(VERSION 3.10)

project(audio_output_oss_plugin)

if (ENABLE_OSS AND (HAVE_SOUNDCARD_H OR HAVE_SYS_SOUNDCARD_H))

    include(${vlc_MODULE_HELPER})

    file(GLOB SRC_FILES
            "../oss.c")

    ConfigureModule(audio_output oss)

endif ()