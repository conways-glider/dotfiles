#!/usr/bin/env bash

set -eou pipefail

# Install homebrew
if [[ ! -x "$(command -v brew)" ]]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update and upgrade installed modules
brew update
brew upgrade

# Install packages
brew install \
  zsh \
  ripgrep \
  go \
  spaceship
