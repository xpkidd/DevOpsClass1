#!/bin/bash


clear
df -h
echo
echo
echo -ne "Number of CPU: ";grep -c ^processor /proc/cpuinfo 
inxi -C
echo
echo
free -h
echo
echo
ifconfig 
echo
echo


