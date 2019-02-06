include(CheckCSourceCompiles)
include(CheckCXXSourceCompiles)
include(CheckFunctionExists)
include(CheckLibraryExists)
include(CheckSymbolExists)
include(CheckTypeSize)

include(${CMAKE_CURRENT_LIST_DIR}/DetectOS.cmake)

if (ANDROID)
    set(configPlatform Android)
elseif (IOS)
    set(configPlatform IOS)
elseif (MSVC)
    set(configPlatform MSVC)
else ()
    set(configPlatform Posix)
endif ()
include(${CMAKE_CURRENT_LIST_DIR}/configure/Configure${configPlatform}.cmake)
unset(configPlatform)

# Package definitions

set(PACKAGE_VERSION_MAJOR 4)
set(PACKAGE_VERSION_MINOR 0)
set(PACKAGE_VERSION_REVISION 0)
set(PACKAGE_VERSION_EXTRA 0)
set(PACKAGE_VERSION_DEV "-git")
set(PACKAGE_VERSION "${PACKAGE_VERSION_MAJOR}.${PACKAGE_VERSION_MINOR}.${PACKAGE_VERSION_REVISION}.${PACKAGE_VERSION_EXTRA}${PACKAGE_VERSION_DEV}")
set(VERSION "${PACKAGE_VERSION}")
set(CODENAME "Otto Chriek")
set(VERSION_MESSAGE "${VERSION} ${CODENAME}")

set(COPYRIGHT_YEARS "1996-2017")
set(COPYRIGHT_MESSAGE "Copyright © ${COPYRIGHT_YEARS} the VideoLAN team")

set(VLC_COMPILER ${CMAKE_C_COMPILER})
if (DEFINED $ENV{USER})
    set(VLC_COMPILE_BY $ENV{USER})
elseif (DEFINED $ENV{USERNAME})
    set(VLC_COMPILE_BY $ENV{USERNAME})
else ()
    set(VLC_COMPILE_BY "vlc-user")
endif ()
set(VLC_COMPILE_HOST ${CMAKE_HOST_SYSTEM})

set(CONFIGURE_LINE "Configured with CMake")

set(PACKAGE "vlc")
set(PACKAGE_NAME ${PACKAGE})
set(PACKAGE_STRING "${PACKAGE_NAME} ${PACKAGE_VERSION}")

# Paths

set(PREFIX "${CMAKE_INSTALL_PREFIX}")
set(BINDIR "${PREFIX}/bin")
set(DATAROOTDIR "${PREFIX}/share")
set(INCLUDEDIR "${PREFIX}/include")
set(INFODIR "${DATAROOTDIR}/info")
set(LIBDIR "${PREFIX}/lib")
set(LOCALEDIR "${DATAROOTDIR}/locale")
set(MANDIR "${DATAROOTDIR}/man")
set(PLUGINDIR "${LIBDIR}/vlc/plugins")
set(ICONSDIR "${DATAROOTDIR}/icons/hicolor")
set(ARCHIVEDIR "${LIBDIR}")

if (WINDOWS)
    set(PLUGINDIR "${BINDIR}/plugins")
endif ()

# Check includes

ConfigureCheckIncludes()

# Check functions

ConfigureCheckFunctions()

# Check symbols

ConfigureCheckSymbols()

# Check libraries

ConfigureCheckLibraries()

# Check built-in types

ConfigureCheckBuiltin()

# Compile checks

ConfigureCheckCompile()

# Check CPU features

ConfigureCheckCPU()

# User options

option(HAVE_CSS "Enable CSS Engine" ON)
option(ENABLE_NLS "Enable NLS" ON)
option(ENABLE_SOUT "Enable stream output support" ON)
option(ENABLE_VLM "Enable VideoLAN manager support" ON)
option(ENABLE_EVAS "Enable EVAS" OFF)
option(ENABLE_OSS "Enable OSS audio output support (BSD only)" OFF)
option(ENABLE_OMX "Enable OpenMAX support" OFF)
option(ENABLE_OPENCV "Enable OpenCV2 support" OFF)
option(OPTIMIZE_MEMORY "Optimize memory usage" OFF)
option(WIN32_LEAN_AND_MEAN "Define to limit the scope of <windows.h>" ON)
option(HAVE_DYNAMIC_PLUGINS "Disable to build as a single static library" ON)
option(ENABLE_BINARIES "Disable to skip building vlc executables" ON)

if (ENABLE_OSS AND NOT (HAVE_SOUNDCARD_H OR HAVE_SYS_SOUNDCARD_H))
    message(ERROR "OSS support enabled but OSS headers not found!")
    return()
endif ()

# Compiler options

if (CMAKE_CXX_STANDARD GREATER_EQUAL 11)
    set(HAVE_CXX11 ON)
endif ()

if ((DEFINED CMAKE_BUILD_TYPE) AND (NOT CMAKE_BUILD_TYPE STREQUAL Debug))
    set(NDEBUG ON)
endif ()

# Platform overrides

ConfigurePlatformOverrides()

# Global definitions

set(__LIBVLC__ ON)

add_definitions(-DHAVE_CONFIG_H)
add_definitions(-DLOCALEDIR="${LOCALEDIR}")
add_definitions(-DPACKAGE_NAME="${PACKAGE_NAME}")
add_definitions(-DPKGLIBDIR="${LIBDIR}")
add_definitions(-DPKGDATADIR="${DATAROOTDIR}")

if (HAVE_DYNAMIC_PLUGINS)
    add_definitions(-DHAVE_DYNAMIC_PLUGINS)
endif ()

if (WINDOWS)
    set(LIBEXT ".dll")
else ()
    set(LIBEXT ".so")
endif ()

set(CMAKE_INSTALL_RPATH ${LIBDIR})
set(CMAKE_BUILD_WITH_INSTALL_RPATH TRUE)

# Save to config.h

configure_file(
        ${PROJECT_SOURCE_DIR}/config.h.in
        ${vlc_CONFIG_H_DIR}/config.h)