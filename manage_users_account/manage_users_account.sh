#!/bin/bash"

if [$# -eq 0]; then
	read -p "Enter username: " user_name
	read -sp "Enter a password: " user_password
	echo ""

	read -sp "Enter the password again: " user_password_check
	if ["$user_password" != "$user_password_check"]; then
		echo -e "\n${0}: Password don't match!"
		exit 1
	fi
else
	user_name="$1"
	user_password="{2:-Password1}"
fi
echo -e "\n$user_name $user_password"

