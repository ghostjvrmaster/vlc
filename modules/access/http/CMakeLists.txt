cmake_minimum_required(VERSION 3.10)

project(access_http_plugin)

include(${vlc_MODULE_HELPER})

# Sources

file(GLOB SRC_FILES *.c)

file(GLOB TEST_SRC_FILES *test.c)
list(REMOVE_ITEM SRC_FILES ${TEST_SRC_FILES})

ConfigureModule(access http)