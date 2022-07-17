#!/bin/bash

# Normal build steps
. build/envsetup.sh
lunch rom_lavender-userdebug
. extras.sh # export flags
make bacon -j$(nproc --all)
