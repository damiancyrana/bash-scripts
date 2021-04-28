#!/bin/bash

while true; do
	clear
	echo "Choose 1, 2, 3"
	echo "1: Logged in users"
	echo "2: Date in 120 days"
	echo "3: Exit"

	read -sn1
	case "$REPLY" in
		1) who;;
		2) date --date "120 days";;
		3) exit 0;;
		*) echo "Selection not recognized";;
	esac
	
	read -n1 -p "Press any key to continue"
done
