# Installing automatically
```
curl https://raw.githubusercontent.com/kosmiyn/dotfiles/main/pkgs > pkgs
pacman -S --needed - < pkgs
curl https://raw.githubusercontent.com/kosmiyn/dotfiles/main/install.sh
chmod+x install.sh
./install.sh
```
# Installing manually
## 1. Download git
```
sudo pacman -S --needed git
```

## 2. Dependencies and their config files
### 2.1. Clone the repo into your working directory
```
git clone https://github.com/kosmiyn/dotfiles
```
### 2.2. Change your working directory into it
```
cd dotfiles
```
### 2.3 Download packages
```
pacman -S --needed - < pkgs
```
 
### 2.4 Copy what you need into your .config
```
cp -r FOLDER-NAME ~/.config/
```
For all config folders, do:
```
cp -r Vencord $HOME/.config/ | cp -r alacritty $HOME/.config/ | cp -r dunst $HOME/.config/ | cp -r i3 $HOME/.config/ | cp -r nvim $HOME/.config/ | cp -r picom $HOME/.config/ | cp -r polybar $HOME/.config/ | cp -r rofi $HOME/.config/
```
## 3. Install paru
```
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```
### 3.1 Install AUR packages
```
paru -S prismlauncher update-grub ani-cli rofi-bluetooth-git catnap-git
```
