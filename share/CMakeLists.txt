cmake_minimum_required(VERSION 3.10)

project(share)

install(FILES
        "icons/vlc.ico"
        DESTINATION "${DATAROOTDIR}")

install(FILES
        "icons/16x16/vlc.png"
        "icons/16x16/vlc.xpm"
        DESTINATION "${ICONSDIR}/16x16")

install(FILES
        "icons/32x32/vlc.png"
        "icons/32x32/vlc.xpm"
        "icons/32x32/vlc-xmas.xpm"
        DESTINATION "${ICONSDIR}/32x32")

install(FILES
        "icons/48x48/vlc.png"
        "icons/48x48/vlc-xmas.png"
        DESTINATION "${ICONSDIR}/48x48")

install(FILES
        "icons/128x128/vlc.png"
        "icons/128x128/vlc-xmas.png"
        DESTINATION "${ICONSDIR}/128x128")

install(FILES
        "icons/256x256/vlc.png"
        DESTINATION "${ICONSDIR}/256x256")

add_custom_target(share)