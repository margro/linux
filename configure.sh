#!/bin/bash
export KERNEL=kernel7
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
make bcm2709_defconfig
