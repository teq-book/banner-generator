#!/bin/bash
clear
Red=$'\e[1;31m'
Green=$'\e[1;32m'
Blue=$'\e[1;34m'
Figlet=$(which figlet)

border1="$Red********************************************************\e[0m"
border2="$Green--------------------------------------------------------\e[0m"
path=$(pwd)

if [ "$Figlet" =  "" ]
then
	echo -n -e "\nFiglet is not installed,press y to install or n to exit\n(y/n)" ; read yesorno
	if [ "$yesorno" = "y" ]
	then
		clear
		pkg install figlet
		echo -e "Installed Succesfully\nRestarting script.."
		bash banner.sh
	else if [ "$yesorno" = "n" ]
	then
		clear
		echo -e "Figlet not installed\nExiting...."
	else
		echo "Exiting due to wrong or no input"
	fi
	fi
else
	echo "Figlet : Installed ✓"

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
fi
