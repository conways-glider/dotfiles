#!/usr/bin/env bash

set -eou pipefail

# Install homebrew
if [[ ! -x "$(command -v brew)" ]]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update
brew upgrade

brew install \
  zsh \
  ripgrep \
  go \
  spaceship
