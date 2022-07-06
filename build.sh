# Normal build steps
. build/envsetup.sh
lunch rom_lavender-userdebug

# export variable here
export TZ=Asia/Kolkata

compile_plox () {
make bacon -j$(nproc --all)
}
