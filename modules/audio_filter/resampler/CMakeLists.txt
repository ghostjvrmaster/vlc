cmake_minimum_required(VERSION 3.10)

project(audio_filter_resampler)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        bandlimited
        ugly)

if (HAVE_SPEEX)
    list(APPEND PLUGINS speex)
endif ()

if (HAVE_SOXR)
    list(APPEND PLUGINS soxr)
endif ()

if (HAVE_SAMPLERATE)
    list(APPEND PLUGINS src)
endif ()

ConfigureModuleGroup()