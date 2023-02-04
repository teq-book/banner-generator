#!/bin/bash
clear
Red=$'\e[1;31m'
Green=$'\e[1;32m'
Blue=$'\e[1;34m'

border1="$Red********************************************************\e[0m"
border2="$Green--------------------------------------------------------\e[0m"
path=$(pwd)
echo -e "\n$border1\n"
echo -e "$Blue                    Banner Generator\e[0m"
echo -e "\n$border1"
echo -n -e "\n\n\n >> Enter the text : " ; read text
if [ -n "$text" ];
then
	figlet "$text" > banner.txt
	echo -e "\n    Converted Successfully...\n"
	echo -e "\n$border2"
	cat banner.txt
	echo -e "\nSaved as banner.txt in\npath =>$Blue$path\e[0m\n"
	echo -e "\n$border2"
else
	echo "Text field empty"
fi

