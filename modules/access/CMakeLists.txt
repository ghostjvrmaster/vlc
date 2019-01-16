cmake_minimum_required(VERSION 3.10)

project(access)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        fs;
        http;)

ConfigureModuleGroup()