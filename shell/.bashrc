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

# Set Neovim as Editor
export VISUAL=/usr/bin/nvim
export EDITOR=/usr/bin/nvim

# Setup ASDF
source $HOME/.local/share/asdf/asdf.sh
source $HOME/.local/share/asdf/completions/asdf.bash

# Setup Starship Prompt
eval "$(starship init bash)"

# Aliases
# alias z="sudo zypper"
# alias cdm="sudo update-alternatives --config default-displaymanager"
alias d="sudo dnf"

# Start Sway
# [ "$(tty)" = "/dev/tty1" ] && exec sway
