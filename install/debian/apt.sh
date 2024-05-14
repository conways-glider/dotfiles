#!/usr/bin/env bash

set -eou pipefail

# echo "Adding repositories"

echo "Running apt update & apt upgrade"
sudo apt update && sudo apt upgrade

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
  tmux \
  openssh-server \
  git-all \
  vlc
