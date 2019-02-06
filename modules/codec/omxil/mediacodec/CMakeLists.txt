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
        "../utils.c"
        "../../hxxx_helper.c"
        "../../../packetizer/hxxx_*.c"
        "../../../packetizer/h264_*.c"
        "../../../video_output/android/utils.c")

ConfigureModule(codec mediacodec)