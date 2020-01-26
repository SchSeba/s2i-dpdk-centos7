#!/usr/bin/env bash
#git clone http://dpdk.org/git/apps/pktgen-dpdk
git clone https://github.com/DPDK/dpdk.git
# shellcheck disable=SC2164
#cd ./pktgen-dpdk

cd dpdk/examples/l2fwd

make
#cp ./app/x86_64-native-linuxapp-gcc/pktgen /usr/bin
