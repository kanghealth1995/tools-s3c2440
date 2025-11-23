#!/bin/sh

rm -rf libiconv-1.14/
tar -zxvf libiconv-1.14.tar.gz

cd libiconv-1.14/
mkdir _install
./configure --host=arm-none-linux-gnueabi --prefix=$(pwd)/_install CC=arm-none-linux-gnueabi-gcc LDFLAGS="-L/usr/local/arm/4.4.3/arm-none-linux-gnueabi/sys-root/lib" --enable-static
make
make install
