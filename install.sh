#!/bin/sh

# Check for Git
if [[ ! -x "$(command -v git)" ]]
then
  echo 'Error: git is not installed.' >&2
  exit 1
fi

# Check for Stow
if [[ ! -x "$(command -v stow)" ]]
then
  echo 'Error: stow is not installed.' >&2
  exit 1
fi

# Clone Dotfiles
if [[ ! -d $HOME/.dotfiles ]]
then
  git clone git@gitlab.com:nclundell/dotfiles $HOME/.dotfiles || { echo 'Error: Could not clone dotfiles.'; exit 1; }
fi

# Setup Configs
cd $HOME/.dotfiles
stow abcde
stow alacritty
stow asdf
stow git
stow kitty
stow mpd
stow ncmpcpp
stow nvim
stow rubocop
stow scripts
stow starship
stow tmux

# Setup Shell
if [[ -f $HOME/.bashrc ]]
then
mv $HOME/.bashrc $HOME/.bashrc.bak
fi

stow shell

source $HOME/.bashrc
