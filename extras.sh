#!/bin/bash

. /tmp/ci/function && check_build_type

# to export flags before compilati
# or you can also apply any patch like rm -rf xx/xx & git clone url xx/xx

export TZ=Asia/Kolkata
export SELINUX_IGNORE_NEVERALLOWS=true
export ARROW_GAPPS=true
case "$build_type" in
		 R|r)
		 export _JAVA_OPTIONS="-Xmx10g"
     export JAVA_TOOL_OPTIONS="-Xmx10g"
esac
