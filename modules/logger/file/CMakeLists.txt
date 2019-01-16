cmake_minimum_required(VERSION 3.10)

project(logger_file_plugin)

include(${vlc_MODULE_HELPER})

set(SRC_FILES ../file.c)

ConfigureModule(logger file_logger)