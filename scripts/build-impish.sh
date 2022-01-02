#!/usr/bin/env bash

REPO_URL="https://github.com/RandomCoderOrg/fs-cook"

git clone $REPO_URL

cd "$(basename $REPO_URL)" || exit 1 

source plugins/envsetup
source plugins/colors

export OVERRIDER_COMPRESSION_TYPE
export ENABLE_EXIT
export ENABLE_USER_SETUP
frn="out/hirsute-raw"
OVERRIDER_COMPRESSION_TYPE="gzip"
ENABLE_EXIT=true
ENABLE_USER_SETUP=false
PREFIX="${frn}-arm64"

do_debootstrap "$PREFIX" arm64
do_compress    "$PREFIX"
do_unmount "$PREFIX"

