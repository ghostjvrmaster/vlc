cmake_minimum_required(VERSION 3.10)

project(stream_filter)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        accesstweaks
        adf
        cache_block
        cache_read
        hds
        inflate
        prefetch
        record
        skiptags)

if (HAVE_ARIBB25)
    list(APPEND PLUGINS aribcam)
endif ()

if (!WINDOWS)
    list(APPEND PLUGINS decomp)
endif ()

ConfigureModuleGroup()