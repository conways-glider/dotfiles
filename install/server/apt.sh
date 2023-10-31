#!/usr/bin/env bash

set -eou pipefail

echo "Adding repositories"
# add-apt-repository universe
sudo add-apt-repository ppa:git-core/ppa -y

# Update apt
echo "Running apt update & apt upgrade"
sudo apt update && sudo apt upgrade

# Install items
echo "Running apt installs"
sudo apt -y install \
  build-essential \
  pkg-config \
  libssl-dev \
  zsh \
  curl \
  ripgrep \
  tmux \
  openssh-server \
  git
