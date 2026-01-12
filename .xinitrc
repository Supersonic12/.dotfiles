#!/bin/sh
picom -b --config ~/.config/picom/picom.conf
xwallpaper --zoom "/home/khazar/Downloads/silentvoice.png"
dwmblocks &
dunst &
eval 'ssh-agent'
exec dwm
