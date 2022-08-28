# Normal build steps
. build/envsetup.sh
lunch arrow_lavender-userdebug

# export variable here
export TZ=Asia/Kolkata
export SELINUX_IGNORE_NEVERALLOWS=true
#export TARGET_SUPPORTS_BLUR=true
#export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
#export ARROW_GAPPS=true
#export TARGET_INCLUDE_GAPPS=true
#export TARGET_GAPPS_ARCH=arm64

compile_plox () {
make bacon -j$(nproc --all)
}
