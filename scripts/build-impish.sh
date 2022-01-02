#!/usr/bin/env bash

REPO_URL="https://github.com/RandomCoderOrg/fs-cook"

git clone $REPO_URL

cd "$(basename $REPO_URL)" || exit 1 

source plugins/envsetup
source plugins/colors

export OVERRIDER_COMPRESSION_TYPE
export ENABLE_EXIT
export ENABLE_USER_SETUP
# export FS_USER
# export FS_PASS

frn="out/hirsute-raw"
OVERRIDER_COMPRESSION_TYPE="gzip"
ENABLE_EXIT=true
ENABLE_USER_SETUP=false

do_debootstrap "${frn}-arm64-tarball" arm64
do_compress    "${frn}-arm64-tarball"

do_unmount "${frn}-tarball"
