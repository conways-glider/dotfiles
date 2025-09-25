#!/usr/bin/env bash

set -eou pipefail

# echo "Adding repositories"

echo "Running apt update"
sudo apt update

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
  openssh-server \
  git-all \
  vlc \
  wireguard
