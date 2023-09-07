#!/usr/bin/env bash

set -eou pipefail

# Add Ubuntu Universe
# add-apt-repository universe

# Update apt
echo "Running apt update & apt upgrade"
sudo apt update && sudo apt upgrade

# Install items
echo "Running apt installs"
sudo apt -y install \
  build-essential \
  pkg-config \
  shellcheck \
  curl \
  git-all \
  zsh \
  fonts-firacode \
  ripgrep \
  podman

echo "Running snap installs"
snap install kubectl --classic
snap install insomnia
snap install --classic code
