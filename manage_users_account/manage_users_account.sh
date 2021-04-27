#!/bin/bash"

user_prompt() {
	message=${1:-"Enter the account details"}
	echo "$message"
	read -p "Enter user name: " user_name
	read -sp "Enter a password: " user_password
	echo ""
	read -sp "Enter the password again: " user_password_check
	echo ""
}

user_check() {
	grep -q \^${1}\: /etc/passwd && return 0	
}


if [ $# -eq 0 ]; then
	user_prompt
	while [ "$user_password" != "$user_password_check" ]; do
		user_prompt "Passwords didn't match!"
	done
else
	user_name="$1"
	user_password="{2:-Password1}"
fi

if user_check "$user_name"; then
	prompt_user "The user name already exist! Please try other creditionals"
fi
echo -e "\n$user_name $user_password"
