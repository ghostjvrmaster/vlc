cmake_minimum_required(VERSION 3.10)

project(logger)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        console;
        file;
        journal;
        syslog;)

if (ANDROID)
    list(APPEND PLUGINS
            android)
endif ()

ConfigureModuleGroup()
