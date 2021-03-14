#!/bin/bash


echo -e "\nChecking the cpu info\n"
lscpu


echo -e "\nchecking the hard drive\n"
lsblk


echo -e "\nchecking the memory\n"
free -m


echo -e "\nchecking the kernel\n"
uname -r



echo -e "\ncheking the os vesion\n"
cat /etc/*-release



echo -e "\nchecking the  system bits\n"
uname -m


