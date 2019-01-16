cmake_minimum_required(VERSION 3.10)

project(logger_console_plugin)

include(${vlc_MODULE_HELPER})

set(SRC_FILES ../console.c)

ConfigureModule(logger console_logger)