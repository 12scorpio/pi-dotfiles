#!/bin/bash

########
# nvim #
########
mkdir -p "$XDG_CONFIG_HOME/nvim"
mkdir -p "$XDG_CONFIG_HOME/nvim/undo"
ln -sf "$HOME/pi-dotfiles/nvim/init.vim" "$XDG_CONFIG_HOME/nvim"

#######
# x11 #
#######
rm -rf "$XDG_CONFIG_HOME/X11"
ln -s "$HOME/pi-dotfiles/X11" "$XDG_CONFIG_HOME"

######
# i3 #
######
rm -rf "$XDG_CONFIG_HOME/i3"
ln -s "$HOME/pi-dotfiles/i3" "$XDG_CONFIG_HOME"

#######
# zsh #
#######
mkdir -p "$XDG_CONFIG_HOME/zsh"
ln -sf "$HOME/pi-dotfiles/zsh/.zshenv" "$HOME"
ln -sf "$HOME/pi-dotfiles/zsh/.zshrc" "$XDG_CONFIG_HOME/zsh"
ln -sf "$HOME/pi-dotfiles/zsh/aliases" "$XDG_CONFIG_HOME/zsh/aliases"
rm -rf "$XDG_CONFIG_HOME/zsh/external"
ln -sf "$HOME/pi-dotfiles/zsh/external" "$XDG_CONFIG_HOME/zsh"

#########
# fonts #
#########
mkdir -p "$XDG_DATA_HOME"
cp -rf "$DOTFILES/fonts" "$XDG_DATA_HOME"
