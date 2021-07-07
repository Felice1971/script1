#!/bin/bash

#Desc: System inventory

Memory=$(free -m)
cpu=$(lscpu)
processor=$(nproc)
hardDrive=$(lsblk)
OS_version=$(cat /etc/*release)


free -m
lscpu
nproc
lsblk
uname -r
cat /etc/*release
echo ${cpu}
echo ${processor}
echo ${hardDrive}
echo ${OS_version}


