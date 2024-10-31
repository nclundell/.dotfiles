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

if [[ $(lsb_release -is) == *Arch* ]]; then
  source $HOME/.dotfiles/dot-local/installers/distros/arch/chaotic-aur
  source $HOME/.dotfiles/dot-local/installers/distros/arch/codecs
  source $HOME/.dotfiles/dot-local/installers/distros/arch/snapper
  source $HOME/.dotfiles/dot-local/installers/distros/arch/tools-cli
elif [[ $(lsb_release -is) == *Fedora* ]]; then
  echo "Matches Fedora!"
elif [[ $(lsb_release -is) == *Tumbleweed* ]]; then
  echo "Matches Tumbleweed!"
fi
