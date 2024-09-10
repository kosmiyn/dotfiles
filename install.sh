cd $HOME
git clone https://github.com/kosmiyn/dotfiles
cd dotfiles
cp -r Vencord $HOME/.config/ | cp -r alacritty $HOME/.config/ | cp -r dunst $HOME/.config/ | cp -r i3 $HOME/.config/ | cp -r nvim $HOME/.config/ | cp -r picom $HOME/.config/ | cp -r polybar $HOME/.config/ | cp -r rofi $HOME/.config/
mkdir $HOME/wallpapers
cp evening-sky(1).png $HOME/wallpapers
cp samurai(1).jpg $HOME/wallpapers
feh --bg-scale $HOME/wallpapers/samurai(1).jpg
rm -rf $HOME/dotfiles
