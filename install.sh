#!/bin/bash

########
# nvim #
########
mkdir -p "$HOME/.config/nvim"
mkdir -p "$HOME/.config/nvim/undo"
ln -sf "$HOME/pi-dotfiles/nvim/init.vim" "$HOME/.config/nvim"

#######
# x11 #
#######
rm -rf "$HOME/.config/X11"
ln -s "$HOME/pi-dotfiles/X11" "$HOME/.config"

######
# i3 #
######
rm -rf "$HOME/.config/i3"
ln -s "$HOME/pi-dotfiles/i3" "$HOME/.config"

#######
# zsh #
#######
mkdir -p "$HOME/.config/zsh"
ln -sf "$HOME/pi-dotfiles/zsh/.zshenv" "$HOME"
ln -sf "$HOME/pi-dotfiles/zsh/.zshrc" "$HOME/.config/zsh"
ln -sf "$HOME/pi-dotfiles/zsh/aliases" "$HOME/.config/zsh/aliases"
rm -rf "$HOME/.config/zsh/external"
ln -sf "$HOME/pi-dotfiles/zsh/external" "$HOME/.config/zsh"
