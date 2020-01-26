#!/usr/bin/env bash
#git clone http://dpdk.org/git/apps/pktgen-dpdk
git clone https://github.com/pktgen/Pktgen-DPDK.git
# shellcheck disable=SC2164
#cd ./pktgen-dpdk
cd ./Pktgen-DPDK

make
#cp ./app/x86_64-native-linuxapp-gcc/pktgen /usr/bin
