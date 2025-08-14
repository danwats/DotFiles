install=nvim sway tmux-session waybar wofi zsh

check: 
	stow -nv $(install)
install:
	stow $(install)
