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
export VISUAL=nvim
export EDITOR=nvim

# Setup ASDF
export ASDF_DIR="$HOME/.local/share/asdf"
export ASDF_DATA_DIR="$HOME/.local/share/asdf/data"
export ASDF_CONFIG_FILE="$HOME/.config/asdf/config"
export ASDF_GEM_DEFAULT_PACKAGES_FILE="$HOME/.config/asdf/default_gems"
export ASDF_PYTHON_DEFAULT_PACKAGES_FILE="$HOME/.config/asdf/default-python-packages"

if [[ -d $HOME/.local/share/asdf ]]; then
  source $HOME/.local/share/asdf/asdf.sh
  source $HOME/.local/share/asdf/completions/asdf.bash
fi

# Setup Starship Prompt
eval "$(starship init bash)"

# Aliases
alias d="sudo dnf"

# Start Sway
# [ "$(tty)" = "/dev/tty1" ] && exec sway
