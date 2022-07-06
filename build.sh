#!/bin/bash

# Normal build steps
lunch rom_lavender-userdebug
make bacon -j$(nproc --all)
