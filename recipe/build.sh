#!/bin/bash
set -ex

./autogen.sh
./configure --prefix=$PREFIX --libdir=$PREFIX/lib --disable-static --enable-shared
make -j${CPU_COUNT}
make install