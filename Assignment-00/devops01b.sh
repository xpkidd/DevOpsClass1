#!/usr/bin/env bash

if [[ $# -eq 0 || $# > 4 ]]; then
    clear
    echo
    echo "Usage: devops01b.sh [-volumes -cpu -ram -network] or -all"
    echo 
    exit 1
fi

FLAG=0
for PARM in "$@"; do
    if [[ $PARM != -volumes ]] && [[ $PARM != -cpu ]] && [[ $PARM != -ram ]] && [[ $PARM != -network ]] && [[ $PARM != -all ]]; then
        FLAG=1
    fi
done

if [[ FLAG -eq 1 ]]; then
        echo
	echo "Error - Incorrect parameter(s)"
        echo
	echo "Usage: devops01b.sh [-volumes -cpu -ram -network] or -all"
        exit 2
fi

for PARM in "$@"; do
    case $PARM in
        -volumes)
            #echo "Computer volumes, size of each volume, free space on each volume"
            #echo "----------------------------------------------------------------"
            df -h
            echo
	    echo
            ;;
        -cpu)
            echo
            echo
	    #echo "Computer cpus/core information"
            #echo "------------------------------"
            echo -ne "Number of CPU(s): "; grep -c ^Processor /proc/cpuinfo
            inxi -C 
            #wmic cpu get caption, deviceid, name, numberofcores, maxclockspeed, status
            echo
	    echo
            ;;
        -ram)
            echo
	    echo
            #echo "Computer RAM"
            #echo "------------"
            free -h
            echo
	    echo
            ;;
    -network) 
	    echo
	    echo
	    #echo "Computer IP address and MAC address"
	    #echo "-----------------------------------"
	    ifconfig  
	    echo
            echo 
            ;;
        -all)
            ./devops01a.sh 
            ;;
    esac
done

exit 0
