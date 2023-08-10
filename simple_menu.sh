#!/bin/bash

echo "Menu:"
echo "1. Option 1"
echo "2. Option 2"
echo "3. Option 3"
echo "4. Exit"

read -p "Enter your choice: " choice

case "$choice" in
		    1) echo "You chose Option 1.";;
			    2) echo "You chose Option 2.";;
				    3) echo "You chose Option 3.";;
					    4) echo "Exiting...";;
						    *) echo "Invalid choice.";;
					esac

