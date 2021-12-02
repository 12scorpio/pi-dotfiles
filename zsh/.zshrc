# aliases
source "$XDG_CONFIG_HOME/zsh/aliases"

# initialize completion setup
autoload -Uz compinit; compinit

# autocomplete hidden files
_comp_options+=(globdots)
source ~/pi-dotfiles/zsh/external/completion.zsh

# add the external scripts directory
fpath=($ZDOTDIR/external $fpath)

# autoload prompt_purification_setup from external
autoload -Uz prompt_purification_setup; prompt_purification_setup

# source scripts.sh
source $DOTFILES/zsh/scripts.sh

# source fzf
#if [ $(command -v 'fzf')]; then
#    source /usr/share/fzf/completion.zsh
#    source /usr/share/fzf/key-bindings.zsh
#fi

# autostart x instead of manually startx
if [ "$(tty)" = "/dev/tty1" ];
then
    pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi
