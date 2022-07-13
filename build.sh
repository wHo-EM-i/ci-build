# Normal build steps
. build/envsetup.sh
lunch aospa_lavender-user

# export variable here
export TZ=Asia/Kolkata

compile_plox () {
./rom-build.sh lavender -t user -v beta -j$(nproc --all)
}
