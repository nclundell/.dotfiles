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

if [[ ! -x "$(command -v mise)" ]]; then
  curl https://mise.run | sh
fi

source $HOME/.bashrc

if [[ ! -x "$(command -v lsb_release)" ]]; then
  if [[ -x "$(command -v pacman)" ]]; then
    sudo pacman -S --noconfirm --needed lsb-release
  fi
fi

if [[ $(lsb_release -is) == *Arch* ]]; then
  echo "Adding Chaotic AUR..."
  source $HOME/.dotfiles/dot-local/installers/distros/arch/chaotic-aur

  echo "Updating mirrors..."
  source $HOME/.dotfiles/dot-local/scripts/arch-mirror-update

  source $HOME/.dotfiles/dot-local/installers/build-deps

  echo "Running Arch installers..."
  source $HOME/.dotfiles/dot-local/installers/distros/arch/bluetooth
  source $HOME/.dotfiles/dot-local/installers/distros/arch/codecs
  source $HOME/.dotfiles/dot-local/installers/distros/arch/drivers-gpu
  source $HOME/.dotfiles/dot-local/installers/distros/arch/fonts
  source $HOME/.dotfiles/dot-local/installers/distros/arch/icons
  source $HOME/.dotfiles/dot-local/installers/distros/arch/tools-cli
  source $HOME/.dotfiles/dot-local/installers/distros/arch/tools-gui
  source $HOME/.dotfiles/dot-local/installers/distros/arch/yay
  source $HOME/.dotfiles/dot-local/installers/distros/arch/snapper
elif [[ $(lsb_release -is) == *Fedora* ]]; then
  echo "Running Fedora installers..."
  source $HOME/.dotfiles/dot-local/installers/distros/fedora/codecs
fi

source $HOME/.bashrc

mise i
