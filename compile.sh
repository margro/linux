#!/bin/bash
CPUS=16
export KERNEL=kernel7
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
export INSTALL_PATH=../install
mkdir -p ${INSTALL_PATH}
make -j${CPUS} zImage modules dtbs && (
    make INSTALL_MOD_PATH=${INSTALL_PATH} modules_install
    #make INSTALL_FW_PATH=${INSTALL_PATH} firmware_install
    cp arch/arm/boot/zImage ${INSTALL_PATH}/kernel7.img
    make dtbs_install INSTALL_DTBS_PATH=${INSTALL_PATH}/dtbs
)