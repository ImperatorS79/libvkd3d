#!/bin/sh
wget https://dl.winehq.org/vkd3d/source/vkd3d-1.0.tar.xz
tar -xf vkd3d-1.0.tar.xz
mkdir build &&
cd build &&
../vkd3d-1.0/configure $1 &&
make -j2
