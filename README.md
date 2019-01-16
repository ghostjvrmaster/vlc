# VLC

This is a customized version of VLC to support the processing of miscellaneous elementary streams.

The build system has been converted from AutoMake to CMake to simplify cross-platform compiling.

New plugin types added:
 * **misc decoder**
 * **misc output**
 
>Note: This has only been built and tested on Linux.  macOS, Windows, Android and iOS support will be added soon.

>Note: Not all modules have been converted to the CMake build system.

Original source: [git://git.videolan.org/vlc.git]()

Based on the `4.0.0-dev` tag.

## Building

```bash
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=`pwd`/prefix
cmake --build .
```

## Running

```bash
cd prefix
bin/vlc-simple input_file

# for verbose output:
bin/vlc-simple -vvvvv input_file
```
