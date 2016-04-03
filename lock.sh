if pgrep "i3lock" > /dev/null
then
	exit
fi
xautolock -disable
tmpbg="/tmp/locking.png"
icon=$HOME/.config/i3/locked.png
scrot $tmpbg
i3lock -u -i $tmpbg
convert $tmpbg -scale 10% -scale 1000% $tmpbg
convert $tmpbg $icon -gravity center -composite -matte $tmpbg
kill $(pgrep i3lock)
i3lock -f -i $tmpbg
xautolock -enable
