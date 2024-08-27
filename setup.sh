#!/bin/bash

mkdir -p $HOME/.local/bin

if [[ -f $HOME/.bashrc ]]; then
  if [[ -L $HOME/.bashrc ]]; then
    rm $HOME/.bashrc
  else
    mv $HOME/.bashrc $HOME/.bashrc.bak
  fi
fi

stow .

if [[ ! -x "$(command -v mise)" ]]; then
  curl https://mise.run | sh
fi

source $HOME/.bashrc

source $HOME/.local/installers/build-deps

mise i -y

source $HOME/.local/installers/nerd-fonts Hack
