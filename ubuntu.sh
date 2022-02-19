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

  mkdir -p ~/.docker/cli-plugins/
  curl -SL https://github.com/docker/compose/releases/download/v2.2.3/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose
  chmod +x ~/.docker/cli-plugins/docker-compose
fi

if [[ ! -x "$(command -v kubectl)" ]]; then
  ./install/ubuntu/kubernetes.sh
fi

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

./install/rust.sh

./install/link.sh

./install/fzf.sh

./install/nvm.sh

./install/configure_git.sh
