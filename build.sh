# Normal build steps
. build/envsetup.sh
lunch aospa_lavender-user

# export variable here
export TZ=Asia/Kolkata
export USER=wHoEMi

compile_plox () {
./rom-build.sh lavender -t user -s keys -v beta -j$(nproc --all)
}
