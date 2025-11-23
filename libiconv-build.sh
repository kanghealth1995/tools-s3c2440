#!/bin/sh

rm -rf libiconv-1.18/
tar -zxvf libiconv-1.18.tar.gz

cd libiconv-1.18/
mkdir _install
./configure --host=arm-linux --prefix=$(pwd)/_install
make
make install
