#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

shopt -s checkwinsize
shopt -s expand_aliases
shopt -s histappend

set -o vi

cdrip () {
  case $1 in
    ogg | mp3 | flac | opus)
      abcde -c $HOME/.config/abcde/config -o $1
      ;;
    *)
      echo "File format \"$1\" not recognized."
      echo "Defaulting to OGG format..."
      abcde -c $HOME/.config/abcde/config -o ogg
      ;;
  esac
}

ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Add Local Build Paths to $PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/man:$PATH

# Set Neovim as Editor
export VISUAL=/usr/bin/nvim
export EDITOR=/usr/bin/nvim

# Setup ASDF
source $HOME/.local/share/asdf/asdf.sh
source $HOME/.local/share/asdf/completions/asdf.bash

# Setup Starship Prompt
eval "$(starship init bash)"

# Aliases
alias z="sudo zypper"
alias cdm="sudo update-alternatives --config default-displaymanager"

# Start Sway
[ "$(tty)" = "/dev/tty1" ] && exec sway
