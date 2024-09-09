if status is-interactive
alias vim nvim
alias ls lsd
alias unzip 'unzip -q'
set fish_greeting
fastfetch --logo /home/kosmiyn/.config/fastfetch/cat
end

fish_add_path /home/kosmiyn/.spicetify

# pnpm
set -gx PNPM_HOME "/home/kosmiyn/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# cevaceva
function pkgsearch
	pacman -Slq | fzf --preview 'pacman -Si {}' --layout=reverse
end
