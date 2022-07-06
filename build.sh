#!/bin/bash

# Normal build steps
. build/envsetup.sh
lunch rom_lavender-userdebug
make bacon -j$(nproc --all)
