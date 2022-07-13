#!/bin/bash

# Normal build steps
. build/envsetup.sh
lunch aospa_lavender-user
export TZ=Asia/Kolkata
./rom-build.sh lavender -t user -v beta -j$(nproc --all)
