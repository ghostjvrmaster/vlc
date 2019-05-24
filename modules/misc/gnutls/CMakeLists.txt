cmake_minimum_required(VERSION 3.10)

project(misc_gnutls_plugin)

include(${vlc_MODULE_HELPER})

file(GLOB SRC_FILES
     "../gnutls.c")

ConfigureModule(misc gnutls)