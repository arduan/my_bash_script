internet_host="google.ru "

if ping -c 1 "$internet_host" &>/dev/null; then
		    echo "Internet connection is active."
	else
			    echo "Internet connection is down!"
fi

