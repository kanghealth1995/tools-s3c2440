#!/bin/sh

rm -rf qt-everywhere-opensource-src-5.6.0/
tar -zxvf qt-everywhere-opensource-src-5.6.0.tar.gz
cp qt_linux-arm-gnueabi-g++_qmake.conf qt-everywhere-opensource-src-5.6.0/qtbase/mkspecs/linux-arm-gnueabi-g++/qmake.conf
cd qt-everywhere-opensource-src-5.6.0/
mkdir _install
./configure  -prefix $(pwd)/_install/ \
  -opensource \
  -release \
  -confirm-license \
  -xplatform linux-arm-gnueabi-g++ \
  -shared \
  -qt-zlib \
  -no-gif \
  -qt-libjpeg \
  -no-nis \
  -no-opengl \
  -no-cups \
  -no-glib \
  -no-dbus \
  -no-rpath \
  -no-sse2 -no-sse3 -no-ssse3 -no-sse4.1 -no-sse4.2 \
  -no-avx  \
  -no-openssl \
  -nomake tools \
  -qreal float \
  -qt-libpng \
  -tslib \
  -nomake examples \
  -I$(pwd)/../tslib/_install/include \
  -L$(pwd)/../tslib/_install/lib
make -j4
make install
