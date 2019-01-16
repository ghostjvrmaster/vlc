cmake_minimum_required(VERSION 3.10)

project(logger_syslog_plugin)

include(${vlc_MODULE_HELPER})

set(SRC_FILES ../syslog.c)

ConfigureModule(logger syslog_logger)