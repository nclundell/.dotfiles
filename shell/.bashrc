#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

shopt -s checkwinsize
shopt -s expand_aliases
shopt -s histappend

set -o vi

# Add Local Build Paths to $PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/man:$PATH
export PATH=$HOME/.local/scripts:$PATH

# Export ENV Vars
export VISUAL=nvim
export EDITOR=nvim

#Setup RTX
if [[ -d $HOME/.config/rtx ]]; then
  export RTX_RUBY_DEFAULT_PACKAGES_FILE="$HOME/.config/rtx/defaults/ruby-gems"
  export RTX_PYTHON_DEFAULT_PACKAGES_FILE="$HOME/.config/rtx/defaults/python-packages"
  export RTX_NODE_DEFAULT_PACKAGES_FILE="$HOME/.config/rtx/defaults/node-packages"
  eval "$(rtx activate bash)"
fi

# Setup Starship Prompt
export STARSHIP_CONFIG="$HOME/.config/starship/config.toml"
eval "$(starship init bash)"

# Setup Tmuxifier
if [[ -d $HOME/.config/tmux/plugins/tmuxifier ]]; then
  export PATH=$HOME/.config/tmux/plugins/tmuxifier/bin:$PATH
  export TMUXIFIER_LAYOUT_PATH="$HOME/.config/tmuxifier/"
  eval "$(tmuxifier init -)"
fi

# Aliases
alias a="sudo apt"

if [[ -f $HOME/.config/dnf/config ]]; then
  alias d="sudo dnf -c $HOME/.config/dnf/config"
else
  alias d="sudo dnf"
fi

alias p="sudo pacman"

alias z="sudo zypper"
