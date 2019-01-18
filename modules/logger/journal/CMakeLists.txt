cmake_minimum_required(VERSION 3.10)

project(logger_journal_plugin)

if (HAVE_SYSLOG_H)

    include(${vlc_MODULE_HELPER})

    set(SRC_FILES
            ../journal.c)

    ConfigureModule(logger journal_logger)

endif ()