xautolock -disable
tmpbg="/tmp/locking.png"
icon=$HOME/.config/i3/locked.png
scrot $tmpbg
i3lock -u -i $tmpbg
convert $tmpbg -scale 5% -scale 2000% $tmpbg
convert $tmpbg $icon -gravity center -composite -matte $tmpbg
kill $(pgrep i3lock)
i3lock -f -i $tmpbg
xautolock -enable
