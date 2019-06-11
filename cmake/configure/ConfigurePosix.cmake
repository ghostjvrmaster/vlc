include(CheckCSourceCompiles)
include(FindIconv)
include(FindLua)
include(${CMAKE_CURRENT_LIST_DIR}/PkgConfigHelper.cmake)

macro(ConfigureCheckIncludes)
    check_include_file("a52dec/a52.h" HAVE_A52DEC_A52_H)
    check_include_file("altivec.h" HAVE_ALTIVEC_H)
    check_include_file("ApplicationServices/ApplicationServices.h" HAVE_APPLICATIONSERVICES_APPLICATIONSERVICES_H)
    check_include_file("arpa/inet.h" HAVE_ARPA_INET_H)
    check_include_file("audio_io.h" HAVE_AUDIO_IO_H)
    check_include_file("d3d11.h" HAVE_D3D11_H)
    check_include_file("d3d9.h" HAVE_D3D9_H)
    check_include_file("d3dx8effect.h" HAVE_D3DX9EFFECT_H)
    check_include_file("ddraw.h" HAVE_DDRAW_H)
    check_include_file("DeckLinkAPIDispatch.cpp" HAVE_DECKLINKAPIDISPATCH_CPP)
    check_include_file("dlfcn.h" HAVE_DLFCN_H)
    check_include_file("dxgi1_6.h" HAVE_DXGI1_6_H)
    check_include_file("dxgidebug.h" HAVE_DXGIDEBUG_H)
    check_include_file("dxva2api.h" HAVE_DXVA2API_H)
    check_include_file("execinfo.h" HAVE_EXECINFO_H)
    check_include_file("features.h" HAVE_FEATURES_H)
    check_include_file("fluidlite.h" HAVE_FLUIDLITE_H)
    check_include_file("fontconfig/fontconfig.h" HAVE_FONTCONFIG_H)
    check_include_file("gcrypt.h" HAVE_GCRYPT)
    check_include_file("getopt.h" HAVE_GETOPT_H)
    check_include_file("GL/glew.h" HAVE_GL_GLEW_H)
    check_include_file("GL/wglew.h" HAVE_GL_WGLEW_H)
    check_include_file("EGL/gl.h" HAVE_EGL_GL_H)
    check_include_file("interface/mmal/mmal.h" HAVE_INTERFACE_MMAL_MMAL_H)
    check_include_file("inttypes.h" HAVE_INTTYPES_H)
    check_include_file("jpeglib.h" HAVE_JPEGLIB_H)
    check_include_file("kai.h" HAVE_KAI_H)
    check_include_file("kva.h" HAVE_KVA_H)
    check_include_file("lauxlib.h" HAVE_LAUXLIB_H)
    check_include_file("libavcodec/avcodec.h" HAVE_LIBAVCODEC_AVCODEC_H)
    check_include_file("libavcodec/d3d11va.h" HAVE_LIBAVCODEC_D3D11VA_H)
    check_include_file("libavcodec/dxva2.h" HAVE_LIBAVCODEC_DXVA2_H)
    check_include_file("libavcodec/vaapi.h" HAVE_LIBAVCODEC_VAAPI_H)
    check_include_file("libavformat/avformat.h" HAVE_LIBAVFORMAT_AVFORMAT_H)
    check_include_file("libavformat/avio.h" HAVE_LIBFORMAT_AVIO_H)
    check_include_file("libavutil/avutil.h" HAVE_LIBAVUTIL_AVUTIL_H)
    check_include_file("libbpg.h" HAVE_LIBBPG_H)
    check_include_file("libcrystalhd/bc_drv_if.h" HAVE_LIBCRYSTALHD_BC_DRV_IF_H)
    check_include_file("libcrystalhd/bc_dts_defs.h" HAVE_LIBCRYSTALHD_BC_DTS_DEFS_H)
    check_include_file("libintl.h" HAVE_LIBINTL_H)
    check_include_file("libswscale/swscale.h" HAVE_LIBSWSCALE_SWSCALE_H)
    check_include_file("libtar.h" HAVE_LIBTAR_H)
    check_include_file("linux/dccp.h" HAVE_LINUX_DCCP_H)
    check_include_file("linux/magic.h" HAVE_LINUX_MAGIC_H)
    check_include_file("linux/videodev2.h" HAVE_LINUX_VIDEODEV2_H)
    check_include_file("mad.h" HAVE_MAD_H)
    check_include_file("memory.h" HAVE_MEMORY_H)
    check_include_file("mntent.h" HAVE_MNTENT_H)
    check_include_file("mpcdec/mpcdec.h" HAVE_MPCDEC_MPCDEC_H)
    check_include_file("mpc/mpcdec.h" HAVE_MPC_MPCDEC_H)
    check_include_file("neaacdec.h" HAVE_NEAACDEC_H)
    check_include_file("netinet/tcp.h" HAVE_NETINET_TCP_H)
    check_include_file("netinet/udplite.h" HAVE_NETINET_UDPLITE_H)
    check_include_file("net/if.h" HAVE_NET_IF_H)
    check_include_file("png.h" HAVE_PNG_H)
    check_include_file("postproc/postprocess.h" HAVE_POSTPROC_POSTPROCESS_H)
    check_include_file("pthread.h" HAVE_PTHREAD_H)
    check_include_file("QTKit/QTKit.h" HAVE_QTKIT_QTKIT_H)
    check_include_file("search.h" HAVE_SEARCH_H)
    check_include_file("SLES/OpenSLES.h" HAVE_SLES_OPENSLES_H)
    check_include_file("soundcard.h" HAVE_SOUNDCARD_H)
    check_include_file("srt/srt.h" HAVE_SRT_SRT_H)
    check_include_file("stdint.h" HAVE_STDINT_H)
    check_include_file("stdlib.h" HAVE_STDLIB_H)
    check_include_file("strings.h" HAVE_STRINGS_H)
    check_include_file("string.h" HAVE_STRING_H)
    check_include_file("sys/eventfd.h" HAVE_SYS_EVENTFD_H)
    check_include_file("sys/mount.h" HAVE_SYS_MOUNT_H)
    check_include_file("sys/param.h" HAVE_SYS_PARAM_H)
    check_include_file("sys/shm.h" HAVE_SYS_SHM_H)
    check_include_file("sys/socket.h" HAVE_SYS_SOCKET_H)
    check_include_file("sys/soundcard.h" HAVE_SYS_SOUNDCARD_H)
    check_include_file("sys/stat.h" HAVE_SYS_STAT_H)
    check_include_file("sys/types.h" HAVE_SYS_TYPES_H)
    check_include_file("sys/uio.h" HAVE_SYS_UIO_H)
    check_include_file("sys/videoio.h" HAVE_SYS_VIDEOIO_H)
    check_include_file("syslog.h" HAVE_SYSLOG_H)
    check_include_file("systemd/sd-journal.h" HAVE_SYSTEMD_SD_JOURNAL_H)
    check_include_file("threads.h" HAVE_THREADS_H)
    check_include_file("tremor/ivorbiscodec.h" HAVE_TREMOR_IVORBISCODEC_H)
    check_include_file("unistd.h" HAVE_UNISTD_H)
    check_include_file("unzip.h" HAVE_UNZIP_H)
    check_include_file("valgrind/valgrind.h" HAVE_VALGRIND_VALGRIND_H)
    check_include_file("VideoToolbox/VideoToolbox.h" HAVE_VIDEOTOOLBOX_VIDEOTOOLBOX_H)
    check_include_file("X11/Xlib.h" HAVE_X11_XLIB_H)
    check_include_file("xlocale.h" HAVE_XLOCALE_H)
    check_include_file("zlib.h" HAVE_ZLIB_H)

    if (LUA_FOUND)
        set(CMAKE_REQUIRED_INCLUDES
                ${LUA_INCLUDE_DIR})

        check_include_file("lua.h" HAVE_LUA_H)
        check_include_file("lualib.h" HAVE_LUALIB_H)

        include_directories(${LUA_INCLUDE_DIR})
    endif ()
endmacro()

macro(ConfigureCheckFunctions)
    check_function_exists(accept4 HAVE_ACCEPT4)
    check_function_exists(aligned_alloc HAVE_ALIGNED_ALLOC)
    check_function_exists(asprintf HAVE_ASPRINTF)
    check_function_exists(atof HAVE_ATOF)
    check_function_exists(atoll HAVE_ATOLL)
    check_function_exists(backtrace HAVE_BACKTRACE)
    check_function_exists(CFLocaleCopyCurrent HAVE_CFLOCALECOPYCURRENT)
    check_function_exists(CFPreferencesCopyAppValue HAVE_CFPREFERENCESCOPYAPPVALUE)
    check_function_exists(daemon HAVE_DAEMON)
    check_function_exists(dcgettext HAVE_DCGETTEXT)
    check_function_exists(dirfd HAVE_DIRFD)
    check_function_exists(eventfd HAVE_EVENTFD)
    check_function_exists(fcntl HAVE_FCNTL)
    check_function_exists(fdopendir HAVE_FDOPENDIR)
    check_function_exists(ffsll HAVE_FFSLL)
    check_function_exists(flock HAVE_FLOCK)
    check_function_exists(flockfile HAVE_FLOCKFILE)
    check_function_exists(fork HAVE_FORK)
    check_function_exists(fstatvfs HAVE_FSTATVFS)
    check_function_exists(fsync HAVE_FSYNC)
    check_function_exists(getdelim HAVE_GETDELIM)
    check_function_exists(getenv HAVE_GETENV)
    check_function_exists(getpid HAVE_GETPID)
    check_function_exists(getpwuid_r HAVE_GETPWUID_R)
    check_function_exists(gettext HAVE_GETTEXT)
    check_function_exists(gettimeofday HAVE_GETTIMEOFDAY)
    check_function_exists(iconv HAVE_ICONV)
    check_function_exists(if_nametoindex HAVE_IF_NAMETOINDEX)
    check_function_exists(inet_pton HAVE_INET_PTON)
    check_function_exists(isatty HAVE_ISATTY)
    check_function_exists(lldiv HAVE_LLDIV)
    check_function_exists(lstat HAVE_LSTAT)
    check_function_exists(memalign HAVE_MEMALIGN)
    check_function_exists(memrchr HAVE_MEMRCHR)
    check_function_exists(mkostemp HAVE_MKOSTEMP)
    check_function_exists(mmap HAVE_MMAP)
    check_function_exists(nrand48 HAVE_NRAND48)
    check_function_exists(openat HAVE_OPENAT)
    check_function_exists(open_memstream HAVE_OPEN_MEMSTREAM)
    check_function_exists(pathconf HAVE_PATHCONF)
    check_function_exists(pipe2 HAVE_PIPE2)
    check_function_exists(poll HAVE_POLL)
    check_function_exists(posix_fadvise HAVE_POSIX_FADVISE)
    check_function_exists(posix_madvise HAVE_POSIX_MADVISE)
    check_function_exists(posix_memalign HAVE_POSIX_MEMALIGN)
    check_function_exists(pread HAVE_PREAD)
    check_function_exists(realpath HAVE_REALPATH)
    check_function_exists(recvmmsg HAVE_RECVMMSG)
    check_function_exists(recvmsg HAVE_RECVMSG)
    check_function_exists(rewind HAVE_REWIND)
    check_function_exists(sched_getaffinity HAVE_SCHED_GETAFFINITY)
    check_function_exists(sendmsg HAVE_SENDMSG)
    check_function_exists(setenv HAVE_SETENV)
    check_function_exists(setlocale HAVE_SETLOCALE)
    check_function_exists(strcasecmp HAVE_STRCASECMP)
    check_function_exists(strcasestr HAVE_STRCASESTR)
    check_function_exists(strcoll HAVE_STRCOLL)
    check_function_exists(strdup HAVE_STRDUP)
    check_function_exists(stricmp HAVE_STRICMP)
    check_function_exists(strlcpy HAVE_STRLCPY)
    check_function_exists(strndup HAVE_STRNDUP)
    check_function_exists(strnicmp HAVE_STRNICMP)
    check_function_exists(strnlen HAVE_STRNLEN)
    check_function_exists(strnstr HAVE_STRNSTR)
    check_function_exists(strptime HAVE_STRPTIME)
    check_function_exists(strsep HAVE_STRSEP)
    check_function_exists(strtof HAVE_STRTOF)
    check_function_exists(strtok_r HAVE_STRTOK_R)
    check_function_exists(strtoll HAVE_STRTOLL)
    check_function_exists(strverscmp HAVE_STRVERSCMP)
    check_function_exists(swab HAVE_SWAB)
    check_function_exists(tdestroy HAVE_TDESTROY)
    check_function_exists(tfind HAVE_TFIND)
    check_function_exists(timegm HAVE_TIMEGM)
    check_function_exists(timespec_get HAVE_TIMESPEC_GET)
    check_function_exists(uselocale HAVE_USELOCALE)
    check_function_exists(vasprintf HAVE_VASPRINTF)
    check_function_exists(vmsplice HAVE_VMSPLICE)
    check_function_exists(_lock_file HAVE__LOCK_FILE)
endmacro()

macro(ConfigureCheckSymbols)
    set(CMAKE_REQUIRED_LIBRARIES "-lm")
    check_symbol_exists(lrintf "math.h" HAVE_LRINTF)
    check_symbol_exists(nanf "math.h" HAVE_NANF)
    check_c_source_compiles("
#include <math.h>
int main() {sincos(0, 0, 0);}"
            HAVE_SINCOS)
    unset(CMAKE_REQUIRED_LIBRARIES)

    if (HAVE_UNISTD_H)
        check_symbol_exists(fdatasync "unistd.h" HAVE_FDATASYNC)
    endif ()
endmacro()

macro(ConfigureCheckLibraries)
    pkg_check_module_helper(aribb24 >=1.0.1 HAVE_ARIBB24)
    pkg_check_module_helper(libavcodec "" HAVE_AVCODEC)
    pkg_check_module_helper(libavutil "" HAVE_AVUTIL)
    pkg_check_module_helper(libidn "" HAVE_IDN)
    pkg_check_module_helper(libcddb >=0.9.5 HAVE_LIBCDDB)
    pkg_check_module_helper(libplacebo >=0.1 HAVE_LIBPLACEBO)
    pkg_check_module_helper(vorbis >=1.1 HAVE_LIBVORBIS)
    pkg_check_module_helper(libprojectM >=2 HAVE_PROJECTM2)
    pkg_check_module_helper(tiger >=0.3.1 HAVE_TIGER)
    pkg_check_module_helper(vdpau "" HAVE_VDPAU)
    pkg_check_module_helper(vaapi "" HAVE_VAAPI)
    pkg_check_module_helper(speex >=1.0.5 HAVE_SPEEX)
    pkg_check_module_helper(soxr >=0.1.2 HAVE_SOXR)
    pkg_check_module_helper(spatialaudio "" HAVE_SPATIALAUDIO)
    pkg_check_module_helper(samplerate "" HAVE_SAMPLERATE)
    pkg_check_module_helper(libpulse >=1.0 HAVE_PULSE)
    pkg_check_module_helper(alsa >=1.0.24 HAVE_ALSA)
    pkg_check_module_helper(zlib "" HAVE_ZLIB)
    pkg_check_module_helper(ncursesw "" HAVE_NCURSESW)
    pkg_check_module_helper(xcb "" HAVE_XCB)
    pkg_check_module_helper(shout >=2.1 HAVE_SHOUT)
    pkg_check_module_helper(libxml-2.0 "" HAVE_LIBXML)
endmacro()

macro(ConfigureCheckBuiltin)
    check_type_size(max_align_t MAX_ALIGN_T)
    check_type_size(PROCESS_MITIGATION_IMAGE_LOAD_POLICY PROCESS_MITIGATION_IMAGE_LOAD_POLICY)
    check_type_size(ssize_t SSIZE_T)
endmacro()

macro(ConfigureCheckCompile)
    check_c_source_compiles("
#include <sapi.h>
ISpObjectToken foo;
int main(){}"
            HAVE_ISPOBJECTTOKEN)

    check_c_source_compiles("
#include <poll.h>
struct pollfd foo;
int main() {}"
            HAVE_STRUCT_POLLFD)

    check_c_source_compiles("
#include <sys/socket.h>
struct sockaddr_storage foo;
int main() {}"
            HAVE_SOCKADDR_STORAGE)

    check_c_source_compiles("
#define _POSIX_THREAD_SAFE_FUNCTIONS
#include <time.h>
int main() {localtime_r(NULL,NULL);}"
            HAVE_LOCALTIME_R)

    check_c_source_compiles("
#define _POSIX_THREAD_SAFE_FUNCTIONS
#include <time.h>
int main() {gmtime_r(NULL,NULL);}"
            HAVE_GMTIME_R)

    check_c_source_compiles("
#include <time.h>
struct timespec foo;
int main() {}"
            HAVE_STRUCT_TIMESPEC)

    check_c_source_compiles("
#include <sys/socket.h>
socklen_t foo;
int main() {}"
            HAVE_SOCKLEN_T)

    check_c_source_compiles("
#include <sys/socket.h>
struct sockaddr_storage foo;
int main() {int x=sizeof(foo.ss_family);}"
            HAVE_SS_FAMILY)

    check_c_source_compiles("
typedef struct __attribute__((packed))foo{};
int main() {}"
            HAVE_ATTRIBUTE_PACKED)

    set(CMAKE_REQUIRED_LIBRARIES "-lmingw32")
    check_c_source_compiles("int main(){}"
            HAVE_LIBMINGW32)
    unset(CMAKE_REQUIRED_LIBRARIES)

    set(CMAKE_REQUIRED_LIBRARIES "-lanl")
    check_c_source_compiles("int main() {}"
            HAVE_LIBANL)
    unset(CMAKE_REQUIRED_LIBRARIES)

    check_c_source_compiles("
#include <assert.h>
int main() {static_assert(1, \"The impossible happened.\");}"
            HAVE_STATIC_ASSERT)

    check_c_source_compiles("
_Thread_local int foo = 0;
int main() {}"
            HAVE_THREAD_LOCAL)

    check_c_source_compiles("
#ifdef_ALL_SOURCE
int main() {}
#endif"
            _ALL_SOURCE)

    check_c_source_compiles("
#ifdef _GNU_SOURCE
int main() {}
#endif"
            _GNU_SOURCE)

    check_c_source_compiles("
#ifdef _POSIX_PTHREAD_SEMANTICS
int main() {}
#endif"
            _POSIX_PTHREAD_SEMANTICS)

    check_c_source_compiles("
#ifdef _TANDEM_SOURCE
int main() {}
#endif"
            _TANDEM_SOURCE)

    check_c_source_compiles("
#ifdef __EXTENSIONS__
int main() {}
#endif"
            __EXTENSIONS__)

    check_cxx_source_compiles("
void foo(void *restrict bar) {}
int main() {}"
            HAVE_RESTRICT)

    if (HAVE_ICONV)
        set(CMAKE_REQUIRED_LIBRARIES Iconv_LIBRARY)
        check_c_source_compiles("
#include <stdlib.h>
#include <iconv.h>
extern \"C\"
size_t iconv (iconv_t cd, const char **inbuf, size_t *inbytesleft, char **outbuf, size_t *outbytesleft);
int main() {}"
                IS_ICONV_CONST)
        unset(CMAKE_REQUIRED_LIBRARIES)
        if (IS_ICONV_CONST)
            set(ICONV_CONST "const")
        else ()
            set(ICONV_CONST "")
        endif ()
    endif ()

    check_c_source_compiles("
#include <net/if.h>
struct if_nameindex foo;
int main() {}"
            HAVE_IF_NAMEINDEX)
endmacro()

macro(ConfigureCheckCPU)
    # TODO: enable cpu optimization features
endmacro()

macro(ConfigurePlatformOverrides)
    if (WINDOWS)
        set(HAVE_SOCKADDR_STORAGE ON)
        set(HAVE_SOCKLEN_T ON)
        set(HAVE_SS_FAMILY ON)
        set(HAVE_STRUCT_TIMESPEC ON)
        set(ENABLE_NLS OFF)
        add_definitions(-D__USE_MINGW_ANSI_STDIO)
    elseif(MACOS)
        include_directories(${CMAKE_OSX_SYSROOT}/usr/include/libxml2)
        add_compile_options(-fobjc-arc)
    endif ()

    if (NOT HAVE_LIBINTL_H)
        set(ENABLE_NLS OFF)
    endif ()
endmacro()