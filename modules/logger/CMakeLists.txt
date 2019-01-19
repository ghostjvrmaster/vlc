cmake_minimum_required(VERSION 3.10)

project(logger)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        console
        file)

if (ANDROID)
    list(APPEND PLUGINS android)
endif ()

if (HAVE_SYSLOG_H)
    list(APPEND PLUGINS syslog)
endif ()
if (HAVE_SYSTEMD_SD_JOURNAL_H)
    list(APPEND PLUGINS journal)
endif ()

ConfigureModuleGroup()
