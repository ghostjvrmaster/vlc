cmake_minimum_required(VERSION 3.10)

project(logger_journal_plugin)

include(${vlc_MODULE_HELPER})

set(SRC_FILES ../journal.c)

ConfigureModule(logger journal_logger)