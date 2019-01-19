cmake_minimum_required(VERSION 3.10)

project(codec_omxil_mediacodec_plugin)

include(${vlc_MODULE_HELPER})

set(MODULE_INCLUDE_DIRS
        ..
        ../..)

file(GLOB SRC_FILES
        "../mediacodec.c"
        "../mediacodec_jni.c"
        "../mediacodec_ndk.c"
        "../omxil_core.c"
        "../qcom.c"
        "../utils.c")

ConfigureModule(codec mediacodec)