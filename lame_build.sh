#!/bin/bash

. abi_settings.sh $1 $2 $3

pushd lame-3.99.5

make clean

#./autogen.sh

./configure \
  --with-pic \
  --with-sysroot="$NDK_SYSROOT" \
  --host="$NDK_TOOLCHAIN_ABI" \
  --enable-static \
  --disable-shared \
  --prefix="${TOOLCHAIN_PREFIX}" || exit 1

make -j${NUMBER_OF_CORES} && make install || exit 1
