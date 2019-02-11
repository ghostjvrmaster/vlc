include(${CMAKE_CURRENT_LIST_DIR}/CheckIncludes.cmake)

macro(ConfigureCheckIncludes)
    check_include_file("dlfcn.h" HAVE_DLFCN_H)
    check_include_file("features.h" HAVE_FEATURES_H)
    check_include_file("getopt.h" HAVE_GETOPT_H)
    check_include_file("inttypes.h" HAVE_INTTYPES_H)
    check_include_file("linux/dccp.h" HAVE_LINUX_DCCP_H)
    check_include_file("linux/magic.h" HAVE_LINUX_MAGIC_H)
    check_include_file("linux/videodev2.h" HAVE_LINUX_VIDEODEV2_H)
    check_include_file("memory.h" HAVE_MEMORY_H)
    check_include_file("mntent.h" HAVE_MNTENT_H)
    check_include_file("netinet/tcp.h" HAVE_NETINET_TCP_H)
    check_include_file("netinet/udplite.h" HAVE_NETINET_UDPLITE_H)
    check_include_file("net/if.h" HAVE_NET_IF_H)
    check_include_file("pthread.h" HAVE_PTHREAD_H)
    check_include_file("search.h" HAVE_SEARCH_H)
    check_include_file("SLES/OpenSLES.h" HAVE_SLES_OPENSLES_H)
    check_include_file("soundcard.h" HAVE_SOUNDCARD_H)
    check_include_file("stdint.h" HAVE_STDINT_H)
    check_include_file("stdlib.h" HAVE_STDLIB_H)
    check_include_file("strings.h" HAVE_STRINGS_H)
    check_include_file("string.h" HAVE_STRING_H)
    check_include_file("sys/eventfd.h" HAVE_SYS_EVENTFD_H)
    check_include_file("sys/mount.h" HAVE_SYS_MOUNT_H)
    check_include_file("sys/param.h" HAVE_SYS_PARAM_H)
    check_include_file("sys/socket.h" HAVE_SYS_SOCKET_H)
    check_include_file("sys/soundcard.h" HAVE_SYS_SOUNDCARD_H)
    check_include_file("sys/stat.h" HAVE_SYS_STAT_H)
    check_include_file("sys/types.h" HAVE_SYS_TYPES_H)
    check_include_file("sys/uio.h" HAVE_SYS_UIO_H)
    check_include_file("sys/videoio.h" HAVE_SYS_VIDEOIO_H)
    check_include_file("syslog.h" HAVE_SYSLOG_H)
    check_include_file("threads.h" HAVE_THREADS_H)
    check_include_file("unistd.h" HAVE_UNISTD_H)
    check_include_file("zlib.h" HAVE_ZLIB_H)
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
    set(HAVE_SAMPLERATE ON)
    include_directories(external/libsamplerate/include)
    list(APPEND CMAKE_LIBRARY_PATH
            external/libsamplerate/lib/ios)
endmacro()

macro(ConfigureCheckBuiltin)
    check_type_size(max_align_t MAX_ALIGN_T)
    check_type_size(ssize_t SSIZE_T)
endmacro()

macro(ConfigureCheckCompile)
    check_c_source_compiles("
#include <sys/shm.h>
int main() {shmdt(nullptr);}"
            HAVE_SYS_SHM_H)
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
endmacro()

macro(ConfigurePlatformOverrides)
    set(HAVE_DYNAMIC_PLUGINS OFF)
    set(ENABLE_NLS OFF)
endmacro()