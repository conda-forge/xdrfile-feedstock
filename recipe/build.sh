#!/usr/bin/env bash
# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* .
cp $BUILD_PREFIX/share/gnuconfig/config.* ./config

./configure --prefix=$PREFIX --enable-shared
make -j${CPU_COUNT}
make install
