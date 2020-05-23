#!/bin/bash

SRC_DST=$PREFIX/share/tinycc/src
BLD_MSG=$PREFIX/share/tinycc/.build.log
rm -rf $BLD_MSG
pushd $SRC_DST >>$BLD_MSG 2>&1
rm -rf build
mkdir -p build
pushd build >>$BLD_MSG 2>&1
../configure --prefix=$PREFIX --with-selinux --with-libgcc >>$BLD_MSG 2>&1
make >>$BLD_MSG 2>&1
make install >>$BLD_MSG 2>&1
popd >>$BLD_MSG 2>&1
rm -rf build
echo "Successfully installed TinyCC" >> $PREFIX/.messages.txt
