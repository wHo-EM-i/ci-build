#!/bin/bash

# Sync source
mkdir -p /tmp/rom # Where to sync source
cd /tmp/rom
repo init --depth=1 --no-repo-verify -u git://github.com//NezukoOS/manifest -b eleven -g default,-device,-mips,-darwin,-notdefault
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8
git clone https://github.com/Maitreya29/android_device_oneplus_cheeseburger.git device/oneplus/cheeseburger
git clone https://github.com/Maitreya29/android_device_oneplus_msm8998-common device/oneplus/msm8998-common
git clone https://github.com/Maitreya29/kernel_oneplus_msm8998.git kernel/oneplus/msm8998
git clone https://github.com/Maitreya29/vendor_oneplus.git vendor/oneplus
# Build
cd /tmp/rom
. build/envsetup.sh
lunch nezuko_cheeseburger-userdebug
export CCACHE_DIR=/tmp/ccache
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
ccache -M 20G # It took only 6.4GB for mido
ccache -o compression=true # Will save times and data to download and upload ccache, also negligible performance issue
ccache -z # Clear old stats, so monitor script will provide real ccache statistics
mka bacon -j$(nproc --all)
