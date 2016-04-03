output=$(echo -e "poweroff\nsuspend\nreboot\nlock\nexit" | rofi -dmenu)
if [ "$output" == "lock" ]
then
	sh ~/.config/i3/lock.sh
	exit
elif [ "$output" == "exit" ]
then
	i3 exit
	exit
fi
systemctl $output
