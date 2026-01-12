# .dotfiles
My humble dotfiles for dwm-flexipatch, dwmblocks, picom, bashrc, dunst

- Home Menu Preview Image
![](/images/preview1.png)
- Floating Mode Preview Image
![](/images/preview2.png)
- Spiral Mode Preview Image
![](/images/preview3.png)
> [!Caution]
> This was designed for username khazar. You will need to change files that contains absolute path. 
> Just run grep -r khazar inside .dotfiles/ directory.
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
```
cp .dotfiles/.local/bin/scripts.sh ~/.local/bin
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


# Thanks
Special thanks to 
> bakkeby, 
> torrinfail, 
> dunst-project,
> yshui

for github repos
> SEPHIROTH508

for Wallpaper
# Future plans
- [ ] Add wallpaper changer(mini interface probably with xmenu). 
- [ ]  Music change notifications. 
