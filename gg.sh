#!/usr/bin/env sh

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"
apt update ; apt install cowsay -y; apt install bash; cowsay GG