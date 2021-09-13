#!/usr/bin/env bash

set -eou pipefail

# Make required directories
mkdir -p ~/.config
mkdir -p ~/.zsh

sudo ./install/ubuntu/apt_snap.sh

# Install docker
if [[ ! -x "$(command -v docker)" ]]; then
  curl -fsSL https://get.docker.com -o get-docker.sh

  sudo sh get-docker.sh

  rm -f get-docker.sh

  # Add user to docker groud
  sudo groupadd docker
  sudo usermod -aG docker "$USER"
fi

if [[ ! -x "$(command -v kubectl)" ]]; then
  ./install/ubuntu/kubernetes.sh
fi

./install/rust.sh

# Install go
if [[ ! -x "$(command -v go)" ]]; then
  ./install/ubuntu/go.sh
fi

# Install zsh and make default
chsh -s "$(command -v zsh)"

# Install Spaceship
rm -rf ~/.zsh/spaceship
git clone https://github.com/spaceship-prompt/spaceship-prompt.git --depth=1 ~/.zsh/spaceship
ln -sf ~/.zsh/spaceship/spaceship.zsh ~/.zsh/prompt_spaceship_setup

./install/link.sh

./install/configure_git.sh
