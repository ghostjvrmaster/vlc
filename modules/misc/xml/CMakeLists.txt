cmake_minimum_required(VERSION 3.10)

project(misc_xml_plugin)

include(${vlc_MODULE_HELPER})

include_directories(${libxml-2.0_INCLUDE_DIRS})

file(GLOB SRC_FILES
        "libxml.c")

ConfigureModule(misc xml)