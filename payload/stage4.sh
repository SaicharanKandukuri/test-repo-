#!/usr/bin/env bash

if [ -d "/root" ]; then
    cd "/root" || true
fi

mkdir -pv .vnc
curl -L -o .vnc/xstartup https://raw.githubusercontent.com/RandomCoderOrg/fs-manager-hippo/main/etc/proot-env/vnc/xstartup
chmod +x .vnc/xstartup
cd ../ || true