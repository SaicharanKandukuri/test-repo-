#!/usr/bin/env sh

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"
apt update ; apt install neofetch -y
neofetch