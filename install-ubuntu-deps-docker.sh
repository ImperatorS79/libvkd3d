#!/bin/sh
docker exec -t ubuntu-16-04 bash -c "apt-get -qq update;
                                     apt-get install -y build-essentials;
                                     apt-get install -y tree;
                                     apt-get install -y flex;
                                     apt-get install -y bison;
									 apt-get install -y pkg-config;
									 apt-get install -y libxcb-keysyms1-dev;
                                     apt-get install -y libvulkan-dev;
									 wget https://launchpad.net/ubuntu/+archive/primary/+sourcefiles/spirv-headers/1.3-1/spirv-headers_1.3.orig.tar.gz ;
									 tar -zxvf spirv-headers_1.3.orig.tar.gz;
									 mv spirv-headers-1.3/include/spirv /usr/include"