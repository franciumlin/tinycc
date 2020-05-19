#!/usr/bin/env bash
mkdir -p build
pushd build
PROCESSOR=$(uname -p)
$SRC_DIR/configure --prefix=$PREFIX --cpu=$PROCESSOR --with-selinux
make && make install
popd
