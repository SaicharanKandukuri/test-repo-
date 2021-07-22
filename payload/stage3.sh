#!/usr/bin/bash

DEPS="git xfce4 xubuntu-desktop curl tigervnc*"
ADEPS="imagemagick optipng inkscape"
repos="WhiteSur-gtk-theme WhiteSur-icon-theme"

apt install -y "$DEPS"
apt install -y "$ADEPS"

if [ -d "/root" ]; then
    cd "/root" || true
fi

for item in $repos; do
    git clone "${item}"
    cd "${item}" || true
    bash install.sh
    cd ../ || true
done
