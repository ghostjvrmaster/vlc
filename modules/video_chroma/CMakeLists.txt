cmake_minimum_required(VERSION 3.10)

project(video_chroma)

include(${vlc_MODULE_HELPER})

set(PLUGINS chain
        grey_yuv
        i420_10_p010
        i420_nv12
        i420_rgb
        i420_yuy2
        i422_i420
        i422_yuy2
        rv32
        yuvp
        yuy2_i420
        yuy2_i422)

if (APPLE)
    list(APPEND PLUGINS cvpx)
endif ()

if (ENABLE_OMX)
    list(APPEND PLUGINS omxdl)
endif ()

if (HAVE_LIBSWSCALE_SWSCALE_H)
    list(APPEND PLUGINS swscale)
endif ()

ConfigureModuleGroup()