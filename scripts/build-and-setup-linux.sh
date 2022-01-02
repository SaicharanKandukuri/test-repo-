#!/usr/bin/env bash

source plugins/envsetup
source plugins/colors

do_compress    "$PREFIX"
do_unmount "$PREFIX"
