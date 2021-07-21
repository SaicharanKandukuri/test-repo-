#!/usr/bin/bash

DEPS="git xfce4 xubuntu-desktop curl tigervnc*"
ADEPS="imagemagick optipng inkscape"

apt install -y $DEPS
apt install -y $ADEPS
