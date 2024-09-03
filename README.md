# Installing
## 1. Download all packages
```
sudo pacman -S --needed alacritty amd-ucode awesome-terminal-fonts base base-devel bat bluez discord efibootmgr fastfetch feh ffmpeg4.4 firefox fish fisher fuse2 gamemode git jre21-openjdk grub lib32-libva-mesa-driver lib32-mesa-vdpau libva-mesa-driver linux-firmware linux-lqx linux-lqx-headers lsd mesa mesa-vdpau meson neovim networkmanager papirus-icon-theme pipewire-alsa qt6-svg reflector rofi sddm spotify-launcher steam ttc-iosevka ttf-hack-nerd unzip xf86-video-amdgpu xsel yt-dlp zenity
```


## 2. .config/ folders
### 2.1. Clone the repo into your working directory
```
git clone https://github.com/kosmiyn/dotfiles
```
### 2.2. Change your working directory into it
```
cd dotfiles
```
### 2.3 Copy what you need into your .config
```
cp -r FOLDER-NAME ~/.config/
```
## 3. Install paru
```
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```
### 3.1 install AUR packages
```
paru -S prismlauncher
```
