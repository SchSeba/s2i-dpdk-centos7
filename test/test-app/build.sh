#!/usr/bin/env bash

wget http://www.lua.org/ftp/lua-5.3.4.tar.gz
tar xzvf lua-5.3.4.tar.gz

# shellcheck disable=SC2164
cd ./lua-5.3.4
yum install git libpcap-devel patch which readline-devel -y

make linux
make install
cd ..
git clone http://dpdk.org/git/apps/pktgen-dpdk
# shellcheck disable=SC2164
cd ./pktgen-dpdk
#ENV DPDK_VER 19.08
#ENV DPDK_DIR /usr/src/dpdk-${DPDK_VER}
#ENV RTE_TARGET=x86_64-native-linuxapp-gcc
#ENV RTE_SDK=${DPDK_DIR}
make
cp ./app/x86_64-native-linuxapp-gcc/pktgen /usr/bin
