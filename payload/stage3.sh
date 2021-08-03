#!/usr/bin/bash
apt --yes --allow full-upgrade -y
DEPS="git curl tigervnc*"
ADEPS="imagemagick optipng inkscape"
repos="vinceliuice/WhiteSur-gtk-theme vinceliuice/WhiteSur-icon-theme"

apt update
apt install -y "$DEPS"
apt install -y "$ADEPS"

if [ -d "/root" ]; then
    cd "/root" || true
fi

for item in $repos; do
    git clone "https://github.com/${item}"
    cd "${item}" || true
    bash install.sh
    cd ../ || true
done
