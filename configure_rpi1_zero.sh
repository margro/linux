#!/bin/bash
KERNEL=kernel
export CROSS_COMPILE=arm-linux-gnueabihf-
export ARCH=arm
if [ ! -f .config ]; then
    make bcmrpi_xenomai3_defconfig
else
    make oldconfig
fi