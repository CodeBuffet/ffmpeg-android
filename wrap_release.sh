#!/bin/sh
echo "Wrapping release builds in GZIP file"
tar -zcvf ffmpeg-android.tar.gz build/
exit 0
