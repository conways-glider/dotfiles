#!/usr/bin/env bash

set -eou pipefail

echo "Adding repositories"
# add-apt-repository universe
sudo add-apt-repository ppa:git-core/ppa -y
sudo add-apt-repository ppa:maveonair/helix-editor

# Update apt
echo "Running apt update & apt upgrade"
sudo apt update && sudo apt upgrade

# Install items
echo "Running apt installs"
sudo apt -y install \
  build-essential \
  pkg-config \
  libssl-dev \
  shellcheck \
  curl \
  zsh \
  fonts-firacode \
  ripgrep \
  podman \
  gnome-tweaks \
  tmux \
  transmission \
  openssh-server \
  git \
  helix \
  neovim
