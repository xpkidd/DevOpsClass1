#!/bin/bash


clear
df -h
echo
echo
echo -ne "Number of CPU: ";grep -c ^processor /proc/cpuinfo 
inxi -C
echo
echo
#echo "Computer RAM"
##echo "------------"
free -h
#echo
#echo
#echo "Computer IP address and MAC address"
#echo "-----------------------------------"
#ipconfig /all



