#! /usr/bin/env bash

mkdir -p $HOME/.local/bin

if [[ -f $HOME/.bashrc ]]; then
  if [[ -L $HOME/.bashrc ]]; then
    rm $HOME/.bashrc
  else
    mv $HOME/.bashrc $HOME/.bashrc.bak
  fi
fi

stow .

# Always install Homebrew on Darwin
if [[ $(uname) == "Darwin" ]]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Run brew bundle if Brew installed, otherwise install Mise
if [[ -x "$(command -v brew)" ]]; then
  brew bundle --file $HOME/.dotfiles/Brewfile
else
  curl https://mise.run | sh
fi

source $HOME/.bashrc
