# Normal build steps
. build/envsetup.sh
lunch dot_lavender-user

# export variable here
export TZ=Asia/Kolkata
#export SELINUX_IGNORE_NEVERALLOWS=true
export TARGET_SUPPORTS_BLUR=true
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
export WITH_GAPPS=true
export DOT_BUILD_TYPE := UNMINKAN_GAPPS
export TARGET_INCLUDE_GAPPS=true
export TARGET_GAPPS_ARCH=arm64

compile_plox () {
make bacon -j$(nproc --all)
}
