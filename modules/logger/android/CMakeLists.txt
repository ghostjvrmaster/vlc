cmake_minimum_required(VERSION 3.10)

project(logger_android_plugin)

include(${vlc_MODULE_HELPER})

set(SRC_FILES ../android.c)

ConfigureModule(logger android_logger)