# VLC

This is a customized version of VLC to support the processing of miscellaneous elementary streams.

The build system has been converted from AutoMake to CMake to simplify cross-platform compiling.

New plugin types added:
 * **misc decoder**
 * **misc output**
 
>Note: Not all modules have been converted to the CMake build system.

Original source: [git://git.videolan.org/vlc.git]()

Based on the `4.0.0-dev` tag.

## Building

```bash
mkdir build
cd build
cmake ..
cmake --build .
```

### Static Library

To generate static libraries:

```bash
mkdir build-static
cd build
cmake .. -DHAVE_DYNAMIC_PLUGINS=OFF -DENABLE_BINARIES=OFF
cmake --build .
```

### iOS

Use `toolchains/ios.toolchain.cmake`:

```bash
mkdir build-ios
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=/Users/ryanloebs/work/xrcast-client-plugin/build/cmake/toolchains/ios.toolchain.cmake -DIOS_DEPLOYMENT_TARGET=11.0
cmake --build .
```

#### iOS Simulator

Add `-DIOS_PLATFORM=SIMULATOR64` to the CMake configuration command.

#### Fat Binaries

If you build static libraries (`.a` files) it's easier to work with "fat" binaries that include both device (amd64)
and simulator (x86_64) artifacts.  `scripts/ios-fat-libs.sh` is a good reference for using the lipo tool to merge
the artifacts from a simulator and device build together.

### Android

Use the `toolchains/android.toolchain.cmake` (found in the NDK bundle):

```bash
mkdir build-android
cd build-android
cmake .. -DCMAKE_TOOLCHAIN_FILE=toolchains/android.toolchain.cmake -DANDROID_ABI=arm64-v8a -DANDROID_PLATFORM=android-21
cmake --build .
```

### Windows

To build on Windows you'll need to install the MSYS/MinGW64 build toolchain.

```bash
mkdir build-windows
cd build-windows
cmake .. -G"MinGW Makefiles"
cmake --build .
```

## Gathering Build Artifacts

You can run the `install` target to copy all of the relevant build artifacts to the configured prefix directory:

```bash
mkdir build-install
cd build-install
cmake .. -DCMAKE_INSTALL_PREFIX=/some/prefix
cmake --build .
cmake --build --target install
```

## Running

```bash
cd prefix
bin/vlc-simple input_file

# for verbose output:
bin/vlc-simple -vvvvv input_file
```
