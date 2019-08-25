#!/bin/bash
KERNEL=kernel7
export CROSS_COMPILE=arm-linux-gnueabihf-
export ARCH=arm
if [ ! -f .config ]; then
    make bcm2709_xenomai3_defconfig
else
    make oldconfig
fi