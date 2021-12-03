# aliases
source "$XDG_CONFIG_HOME/zsh/aliases"

# initialize completion setup
autoload -Uz compinit; compinit

# autocomplete hidden files
_comp_options+=(globdots)
source ~/pi-dotfiles/zsh/external/completion.zsh

# add the external scripts directory
fpath=($ZDOTDIR/external $fpath)

# prompt customization
# autoload vcs_info in right prompt (git etc)
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT='%F{99}${vcs_info_msg_0_}%f'
# PROMPT='${vcs_info_msg_0_}'
zstyle ':vcs_info:git:*' formats '%b'
# show current directory and  ▶ in a 256 color
PROMPT='%F{116}%~%f %F{106}▶%f '

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
