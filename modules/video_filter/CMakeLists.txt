cmake_minimum_required(VERSION 3.10)

project(video_filter)

include(${vlc_MODULE_HELPER})

set(PLUGINS
        adjust
        alphamask
        anaglyph
        antiflicker
        ball
        blend
        blendbench
        bluescreen
        canvas
        colorthres
        croppadd
        deinterlace
        edgedetection
        erase
        extract
        fps
        freeze
        gaussianblur
        gradfun
        gradient
        grain
        hqdn3d
        invert
        magnify
        mirror
        motionblur
        motiondetect
        oldmovie
        posterize
        psychedelic
        puzzle
        ripple
        rotate
        scale
        scene
        sepia
        sharpen
        transform
        vhs
        wave)

if (APPLE)
    list(APPEND PLUGINS ci_filters)
endif ()

if (ENABLE_OPENCV)
    list(APPEND PLUGINS opencv_wrapper)
endif ()

if (HAVE_POSTPROC_POSTPROCESS_H)
    list(APPEND PLUGINS postproc)
endif ()

ConfigureModuleGroup()