#!/bin/bash

# Normal build steps
. build/envsetup.sh
lunch superior_lavender-userdebug
. extras.sh
export TZ=Asia/Kolkata
make bacon -j$(nproc --all)
