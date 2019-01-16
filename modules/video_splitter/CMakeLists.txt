cmake_minimum_required(VERSION 3.10)

project(video_splitter)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        clone;
        panoramix;
        wall;)

ConfigureModuleGroup()