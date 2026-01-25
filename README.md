# .dotfiles
My humble dotfiles for dwm-flexipatch, dwmblocks, picom, bashrc, dunst

- Home Menu Preview Image
![](/images/preview1.png)
- Floating Mode Preview Image
![](/images/preview2.png)
- Spiral Mode Preview Image
![](/images/preview3.png)
> [!Caution]
> This was designed for username khazar.
> Just change USER macro in:
>  1. dwm-flexipatch/config.h
>  2. dwmblocks/blocks.h
>  3. .xinitrc
>  4. .local/bin/scripts.sh
> to your own home location
# Installation and setup

**Clone .dotfiles to your machine**
```
git clone https://github.com/Supersonic12/.dotfiles/
```
## X11 setup
```
sudo pacman -S xorg xorg-xinit
cp .dotfiles/.xinitrc ~/.xinitrc
```
## Terminal setup
```
cp .dotfiles/.bashrc ~/.bashrc
cp .dotfiles/.bash_profile ~/.bash_profile
```
## Dwm-flexipatch setup
```
git clone https://github.com/bakkeby/dwm-flexipatch
cp .dotfiles/dwm-flexipatch/config.h dwm-flexipatch/
cp .dotfiles/dwm-flexipatch/config.mk dwm-flexipatch/
cp .dotfiles/dwm-flexipatch/patches.h dwm-flexipatch/
```
## Dwm-blocks setup
```
git clone https://github.com/torrinfail/dwmblocks
cp .dotfiles/dwmblocks/blocks.h dwmblocks/
```
## Scripts setup
<!-- scripts.sh is for rofi menu and dwmblocks -->
<!-- layoutmenu is for just changing dwm layout with menu -->
```
cp .dotfiles/.local/bin/scripts.sh ~/.local/bin
cp .dotfiles/.local/bin/layoutmenu ~/.local/bin
```
## Dunst setup
```
git clone https://github.com/dunst-project/dunst
cp .dotfiles/dunst/dunstrc dunst/
```
## Picom setup
```
sudo pacman -S picom
mkdir -p ~/.config/picom/
cp .dotfiles/picom/picom.conf ~/.config/picom/
```
## Rofi setup 
```
git clone https://github.com/davatorium/rofi
mkdir -p ~/.config/rofi
cp .dotfiles/rofi/arthur.rasi ~/.config/rofi/
```

## Alacritty setup
```
sudo pacman -S alacritty
mkdir -p ~/.config/alacritty/ 
cp .dotfiles/alacritty/* ~/.config/alacritty/ 
```

## Cronie setup
```
sudo pacman -S cron
crontab -e 
cp ".dotfiles/cronfile" "/var/spool/cron/$USER"
sudo systemctl enable cronie 
sudo systemctl start cronie
```
# Thanks
Special thanks to 
> bakkeby, 
> torrinfail, 
> dunst-project,
> yshui
> davatorium

for github repos
> SEPHIROTH508

for Wallpaper
# Future plans
- [ ] Add wallpaper changer(mini interface probably with xmenu). 
- [ ]  Music change notifications. 
