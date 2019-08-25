#!/bin/bash
KERNEL=kernel7
NUM_CPUS=16
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
export INSTALL_PATH=../install
export INSTALL_DTBS_PATH=../install/dtbs
mkdir -p ${INSTALL_PATH}
mkdir -p ${INSTALL_PATH}/dtbs
make -j${NUM_CPUS} zImage modules dtbs && (
    make INSTALL_MOD_PATH=${INSTALL_PATH} modules_install
    cp arch/arm/boot/zImage ${INSTALL_PATH}/kernel7.img
    make dtbs_install INSTALL_DTBS_PATH=${INSTALL_DTBS_PATH}
)