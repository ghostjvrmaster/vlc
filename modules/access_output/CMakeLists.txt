cmake_minimum_required(VERSION 3.10)

project(access_output)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        dummy;
        file;
        http;
        livehttp;
        shout;
        udp;)

ConfigureModuleGroup()

if (HAVE_SRT_SRT_H)
    AddModuleGroupDependency(srt)
endif ()