#!/usr/bin/env bash

set -eou pipefail

echo "Adding repositories"
sudo add-apt-repository ppa:mozillacorp/mozillavpn
# add-apt-repository universe

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
  git-all \
  zsh \
  fonts-firacode \
  ripgrep \
  podman \
  gnome-tweaks \
  tmux \
  transmission \
  openssh-server

echo "Running snap installs"
sudo snap install kubectl --classic
sudo snap install insomnia
sudo snap install --classic code
sudo snap install discord
sudo snap install vlc
sudo snap install spotify
sudo snap install microk8s

echo "Running post install tasks"
sudo snap connect discord:system-observe
