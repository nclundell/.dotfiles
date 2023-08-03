#!/bin/sh

# Check for Git
if ! command -v git &> /dev/null
then
  echo 'Error: git is not installed.'
  exit 1
fi

# Check for Stow
if ! command -v stow &> /dev/null
then
  echo 'Error: stow is not installed.'
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
stow mpd
stow ncmpcpp
stow nvim
stow rubocop
stow scripts
stow sway
stow waybar

# Setup Shell
if [[ -f $HOME/.bashrc ]]
then
mv $HOME/.bashrc $HOME/.bashrc.bak
fi

stow shell

source $HOME/.bashrc
