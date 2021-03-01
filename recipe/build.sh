#!/usr/bin/env bash

if [[ "$target_platform" == "win-64" ]] ;
then
  ./configure --prefix=$PREFIX
  patch_libtool
else
  ./configure --prefix=$PREFIX --enable-shared
fi

make -j${CPU_COUNT}
make install
