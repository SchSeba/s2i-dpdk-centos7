#!/usr/bin/env bash

if [ "$RUN_TYPE" == "testpmd" ]; then
export CPU=`cat /sys/fs/cgroup/cpuset/cpuset.cpus`
echo ${CPU}
echo ${PCIDEVICE_OPENSHIFT_IO_DPDKNIC}
testpmd -l ${CPU} -w ${PCIDEVICE_OPENSHIFT_IO_DPDKNIC} --log-level=*:debug -- -i --portmask=0x1 --nb-cores=2 --forward-mode=macswap --port-topology=loop
else
  while true; do sleep 300000000; done;
fi
