#!/bin/bash

for file in `find ../vlc-build-ios -name '*.a'` ; do
    root="../vlc-build-ios/"
    outname=${file#$root}
    mkdir -p `dirname $outname`
    lipo -create $file ../vlc-build-ios-sim/`dirname $outname`/`basename $file` -output $outname
done
