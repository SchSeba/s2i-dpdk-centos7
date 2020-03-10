#!/usr/bin/env bash

make -C test-pmd

cp test-pmd/testpmd ./

echo "build done"
