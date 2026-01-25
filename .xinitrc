#!/bin/sh
$USER=jesus
picom -b --config "/home/$USER.config/picom/picom.conf"
xwallpaper --zoom "/home/$USER/.dotfiles/wallpaper/silentvoice.png"
dwmblocks &
dunst &
eval 'ssh-agent'
exec dwm
