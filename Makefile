install=nvim sway tmux-session waybar wofi zsh

check: 
	stow -nv -t ~ $(install)
install:
	stow -t $(install)
