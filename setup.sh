#! /usr/bin/env bash

if [[ -f $HOME/.bashrc ]]; then
  if [[ -L $HOME/.bashrc ]]; then
    rm $HOME/.bashrc
  else
    mv $HOME/.bashrc $HOME/.bashrc.bak
  fi
fi

stow .

# Install Mise
mkdir -p $HOME/.local/bin
curl https://mise.run | sh

source $HOME/.bashrc
