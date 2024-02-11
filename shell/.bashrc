# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

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

# Setup Mise
if [[ -x "$(command -v mise)" ]]; then
  export MISE_GO_DEFAULT_PACKAGES_FILE="$HOME/.config/mise/default/go-packages"
  export MISE_NODE_DEFAULT_PACKAGES_FILE="$HOME/.config/mise/default/node-packages"
  export MISE_PYTHON_DEFAULT_PACKAGES_FILE="$HOME/.config/mise/default/python-packages"
  export MISE_RUBY_DEFAULT_PACKAGES_FILE="$HOME/.config/mise/default/ruby-gems"
  eval "$(mise activate bash)"
fi

# Setup Starship Prompt
if [[ -x "$(command -v starship)" ]]; then
  export STARSHIP_CONFIG="$HOME/.config/starship/config.toml"
  eval "$(starship init bash)"
fi

# Setup Tmuxifier
if [[ -x "$(command -v tmux)" ]]; then
  if [[ -d $HOME/.config/tmux/plugins/tmuxifier ]]; then
    export PATH=$HOME/.config/tmux/plugins/tmuxifier/bin:$PATH
    export TMUXIFIER_LAYOUT_PATH="$HOME/.config/tmuxifier/"
    eval "$(tmuxifier init -)"
  fi
fi

# Aliases
alias a="sudo apt"
alias br="source $HOME/.bashrc"

if [[ -f $HOME/.config/dnf/config ]]; then
  alias d="sudo dnf -c $HOME/.config/dnf/config"
else
  alias d="sudo dnf"
fi

if [[ -x "$(command -v eza)" ]]; then
  alias ls="eza"
else
  alias ls="ls --color=auto"
fi
alias p="sudo pacman"
alias z="sudo zypper"
