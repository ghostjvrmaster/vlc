cmake_minimum_required(VERSION 3.10)

project(po)

file(READ "LINGUAS" languages)
string(REGEX REPLACE "\n" ";" languages "${languages}")

foreach (gmo IN LISTS languages)
    if (gmo)
        install(FILES "${gmo}.gmo"
                DESTINATION ${LOCALEDIR}/${gmo}/LC_MESSAGES
                RENAME "vlc.mo")
    endif ()
endforeach ()

add_custom_target(po)