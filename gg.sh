#!/usr/bin/env sh

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"
apt update ; apt install cowsay -y; apt install bash

if bash /ff.sh; then
    cowsay GG
else
    cowsay fuck you mate
fi

neofetch