#!/bin/bash

read -p "Enter your password: " password

if [[ ${#password} -ge 8 && "$password" =~ [0-9]+ && "$password" =~ [a-zA-Z]+ &&
		"$password" =~ [!@#\$%^&*]+ ]]; then
    echo "Password is strong."
else
		    echo "Password is weak. It must be at least 8 characters long and
			contain at least one digit, one letter, and one special character
			(!@#\$%^&*)."
fi
