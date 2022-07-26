# Normal build steps
. build/envsetup.sh
lunch fuse_lavender-userdebug

# export variable here
export TZ=Asia/Kolkata
export SELINUX_IGNORE_NEVERALLOWS=true
export WITH_GAPPS=true
#export TARGET_INCLUDE_GAPPS=true
#export TARGET_GAPPS_ARCH=arm64

compile_plox () {
make fuse-prod -j$(nproc --all)
}
