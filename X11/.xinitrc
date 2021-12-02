urxvtd -o -q -f
xrdb -merge ~/.config/X11/.Xresources
xrandr --output HDMI-1 --mode 1920x1080

exec i3
