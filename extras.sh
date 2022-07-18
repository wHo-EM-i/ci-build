#!/bin/bash

. /tmp/ci/function && check_build_type

# to export flags before compilation
export CCACHE_DIR=/tmp/ccache
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
ccache -M 15G
ccache -o compression=true
ccache -z

export TZ=Asia/Kolkata
export SELINUX_IGNORE_NEVERALLOWS=true
export BUILD_WITH_GAPPS=true
case "$build_type" in
		 R|r)
		 export _JAVA_OPTIONS="-Xmx10g"
esac
