#!/usr/bin/env bash
git clone http://dpdk.org/git/apps/pktgen-dpdk
# shellcheck disable=SC2164
cd ./pktgen-dpdk

make
cp ./app/x86_64-native-linuxapp-gcc/pktgen /usr/bin
