#!/usr/bin/env bash

set -eou pipefail

# Install homebrew
echo "Checking for brew install"
if [[ ! -x "$(command -v brew)" ]]; then
  echo "Installing brew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update and upgrade installed modules
echo "Updating & Upgrading brew"
brew update
brew upgrade

# Install packages
echo "Installing brew packages"
brew install \
  bat \
  elixir \
  fish \
  gallery-dl \
  go \
  golangci-lint \
  helix \
  k9s \
  kubectl \
  kubectx \
  neovim \
  nushell \
  podman \
  pure \
  ripgrep \
  shellcheck \
  spaceship \
  tmux \
  yt-dlp \
  zsh
