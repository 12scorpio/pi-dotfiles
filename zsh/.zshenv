# for dotfiles
export XDG_CONFIG_HOME="$HOME/.config"

# for specific data
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"

# for cached files
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

# set editor defaults
export EDITOR="nvim"
export VISUAL="nvim"

# zdotdir
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# history filepath
export HISTFILE="$ZDOTDIR/.zhistory"

# max events for internal history
export HISTSIZE=10000

# max events in history file
export SAVEHIST=10000

# dotfiles dir
export DOTFILES="$HOME/pi-dotfiles"

# add ripgrep support to fzf
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# set nvim source location
export MYVIMRC="$XDG_CONFIG_HOME/nvim/init.vim"
