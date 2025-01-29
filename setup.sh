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

if [[ ! -x "$(command -v lsb_release)" ]]; then
  if [[ -x "$(command -v pacman)" ]]; then
    sudo pacman -S --noconfirm --needed lsb_release
  fi
fi

if [[ $(lsb_release -is) == *Arch* ]]; then
  echo "Running Arch installers..."
  source $HOME/.dotfiles/dot-local/installers/distros/arch/chaotic-aur
  source $HOME/.dotfiles/dot-local/installers/distros/arch/codecs
  source $HOME/.dotfiles/dot-local/installers/distros/arch/snapper
  source $HOME/.dotfiles/dot-local/installers/distros/arch/tools-cli
elif [[ $(lsb_release -is) == *Fedora* ]]; then
  echo "Running Fedora installers..."
  source $HOME/.dotfiles/dot-local/installers/distros/fedora/codecs
  source $HOME/.dotfiles/dot-local/installers/distros/fedora/fedy
  source $HOME/.dotfiles/dot-local/installers/distros/fedora/tools-cli
fi

source $HOME/.bashrc

mise i
