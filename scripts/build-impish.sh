#!/usr/bin/env bash

REPO_URL="https://github.com/RandomCoderOrg/fs-cook"

git clone $REPO_URL

cd "$(basename $REPO_URL)" || exit 1 

source plugins/envsetup
source plugins/colors

do_debootstrap "$PREFIX" arm64

