#!/bin/bash

mkdir -p $HOME/.local/bin

if [[ -f $HOME/.bashrc ]]; then
  if [[ ! -L $HOME/.bashrc ]]; then
    mv $HOME/.bashrc $HOME/.bashrc.bak
  fi
fi

stow .

source $HOME/.bashrc

if [[ ! -x "$(command -v mise)" ]]; then
  uget mise
fi

source $HOME/.local/installers/build-deps

mise i -y

source $HOME/.local/installers/nerd-fonts Hack
