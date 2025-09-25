#!/usr/bin/env bash

set -eou pipefail

echo "Adding repositories"
# add-apt-repository universe

# Update apt
echo "Running apt update"
sudo apt update

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
  git-all \
  nfs-common
