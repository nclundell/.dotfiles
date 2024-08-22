#!/bin/bash

mkdir -p $HOME/.local/bin

stow .

source $HOME/.bashrc

if [[ ! -x "$(command -v mise)" ]]; then
  uget mise tmp
fi

source $HOME/.local/installers/build-deps

mise i -y

source $HOME/.local/installers/nerd-fonts Hack
