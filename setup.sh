#!/bin/bash

mkdir -p $HOME/.local/bin

if [[ -f $HOME/.bashrc ]]; then
  mv $HOME/.bashrc $HOME/.bashrc.bak
fi

stow .

source $HOME/.bashrc

if [[ ! -x "$(command -v mise)" ]]; then
  uget mise
fi
