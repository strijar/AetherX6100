#!/usr/bin/bash

make -C buildroot BR2_EXTERNAL=../br2_external O=../build X6100_defconfig
