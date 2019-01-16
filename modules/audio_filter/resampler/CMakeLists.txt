cmake_minimum_required(VERSION 3.10)

project(audio_filter_resampler)

add_subdirectory(bandlimited)
add_subdirectory(soxr)
add_subdirectory(speex)
add_subdirectory(src)
add_subdirectory(ugly)

add_custom_target(audio_filter_resampler)
add_dependencies(audio_filter_resampler
        audio_filter_resampler_bandlimited_plugin
        audio_filter_resampler_soxr_plugin
        audio_filter_resampler_speex_plugin
        audio_filter_resampler_src_plugin
        audio_filter_resampler_ugly_plugin)