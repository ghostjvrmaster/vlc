cmake_minimum_required(VERSION 3.10)

project(notify_plugin)

include(${vlc_MODULE_HELPER})

if (APPLE)
    file(GLOB SRC_FILES
            osx_notifications.m)
else ()
    file(GLOB SRC_FILES
            "notify.c")
endif ()

ConfigureModule(notify notify)