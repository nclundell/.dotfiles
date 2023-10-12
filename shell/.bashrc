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
# export ASDF_DIR="$HOME/.local/share/asdf"
# export ASDF_DATA_DIR="$HOME/.local/share/asdf/data"
# export ASDF_CONFIG_FILE="$HOME/.config/asdf/config"
# export ASDF_GEM_DEFAULT_PACKAGES_FILE="$HOME/.config/asdf/default-ruby-gems"
# export ASDF_GOLANG_DEFAULT_PACKAGES_FILE="$HOME/.config/asdf/default-go-packages"
# export ASDF_NPM_DEFAULT_PACKAGES_FILE="$HOME/.config/asdf/default-npm-packages"
# export ASDF_PYTHON_DEFAULT_PACKAGES_FILE="$HOME/.config/asdf/default-pip-packages"
#
# if [[ -d $HOME/.local/share/asdf ]]; then
#   source $HOME/.local/share/asdf/asdf.sh
#   source $HOME/.local/share/asdf/completions/asdf.bash
# fi

#Setup RTX
if [[ -d $HOME/.config/rtx ]]; then
  export RTX_RUBY_DEFAULT_PACKAGES_FILE="$HOME/.config/rtx/defaults/ruby-gems"
  export RTX_PYTHON_DEFAULT_PACKAGES_FILE="$HOME/.config/rtx/defaults/python-packages"
  export RTX_NODE_DEFAULT_PACKAGES_FILE="$HOME/.config/rtx/defaults/node-packages"
  eval "$(rtx activate bash)"
fi

# Setup Go
if [[ -x "$(command -v go)" ]]; then
  export GOPATH=$(go env GOPATH)
  export GOROOT=$(go env GOROOT)
  export GOBIN=$(go env GOBIN)
  export PATH=$PATH:$GOPATH/bin
  export PATH=$PATH:$GOROOT/bin
  export PATH=$PATH:$GOBIN
fi

# Setup Starship Prompt
export STARSHIP_CONFIG="$HOME/.config/starship/config.toml"
eval "$(starship init bash)"

# Aliases
alias a="sudo apt"

if [[ -f $HOME/.config/dnf/config ]]; then
  alias d="sudo dnf -c $HOME/.config/dnf/config"
else
  alias d="sudo dnf"
fi

alias p="sudo pacman"

alias z="sudo zypper"

# Start Sway
# [ "$(tty)" = "/dev/tty1" ] && exec sway
