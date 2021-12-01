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
