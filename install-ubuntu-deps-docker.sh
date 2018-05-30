#!/bin/sh
docker exec -t ubuntu-18-04 bash -c "apt-get -qq update;
				     apt-get install -y wget;
				     apt-get install -y unzip;
                                     apt-get install -y build-essential;
                                     apt-get install -y tree;
                                     apt-get install -y flex;
                                     apt-get install -y bison;
				     apt-get install -y pkg-config;
				     apt-get install -y libxcb-keysyms1-dev;
				     apt-get install -y libxcb-util0-dev;
				     apt-get install -y libxcb-icccm4-dev;
                                     apt-get install -y libvulkan-dev;
				     wget https://launchpad.net/ubuntu/+archive/primary/+sourcefiles/spirv-headers/1.3-1/spirv-headers_1.3.orig.tar.gz ;
				     tar -zxvf spirv-headers_1.3.orig.tar.gz;
				     mv spirv-headers-1.3/include/spirv /usr/include;
				     wget https://github.com/KhronosGroup/SPIRV-Tools/releases/download/master-tot/SPIRV-Tools-master-linux-RelWithDebInfo.zip;
				     unzip https://github.com/KhronosGroup/SPIRV-Tools/releases/download/master-tot/SPIRV-Tools-master-linux-RelWithDebInfo.zip -d spirv-tools/;
				     cp spirv-tools/bin/* /usr/bin;
				     cp -r spirv-tools/include/* /usr/include;
				     cp -r spirv-tools/lib/* /usr/lib"
