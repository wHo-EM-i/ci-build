#!/bin/bash

# Sync source
mkdir -p /tmp/rom 
cd /tmp/rom
repo init --depth=1 --no-repo-verify -u https://github.com/PixelExtended/manifest -b snow -g default,-device,-mips,-darwin,-notdefault
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8
git clone https://github.com/ImPrashantt/device_xiaomi_lavender -b test device/xiaomi/lavender
git clone https://github.com/ImPrashantt/vendor_xiaomi_lavender -b test vendor/xiaomi/lavender
git clone https://github.com/RadiantDevices/kernel_xiaomi_lavender kernel/xiaomi/lavender
git clone -b master --depth=1 https://github.com/kdrag0n/proton-clang.git prebuilts/clang/host/linux-x86/clang-proton
# Build
cd /tmp/rom
. build/envsetup.sh
lunch aosp_lavender-userdebug
export CCACHE_DIR=/tmp/ccache
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
ccache -M 20G # It took only 6.4GB for mido
ccache -o compression=true # Will save times and data to download and upload ccache, also negligible performance issue
ccache -z # Clear old stats, so monitor script will provide real ccache statistics
mka bacon -j$(nproc --all)
