#!/bin/sh

#依赖：
#sudo apt-get install autoconf
#sudo apt-get install automake
#sudo apt-get install libtool

#编译：
tar xzf tslib-1.4.tar.gz
cd tslib/
./autogen.sh 

mkdir _install
echo "ac_cv_func_malloc_0_nonnull=yes" >arm-linux.cache
./configure --host=arm-linux --cache-file=arm-linux.cache --prefix=$(pwd)/_install
make
make install

#安装：
#cd _install
#cp * -rf ../busybox-s3c2440/install/


#使用：
#先安装s3c_ts.ko, lcd.ko
#
#1．修改 /etc/ts.conf第1行(去掉#号和第一个空格)：
## module_raw input
#改为：
#module_raw input

#2．
#export TSLIB_TSDEVICE=/dev/event1
#export TSLIB_CALIBFILE=/etc/pointercal
#export TSLIB_CONFFILE=/etc/ts.conf
#export TSLIB_PLUGINDIR=/lib/ts
#export TSLIB_CONSOLEDEVICE=none
#export TSLIB_FBDEVICE=/dev/fb0
