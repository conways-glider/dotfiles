#!/usr/bin/env bash

set -eou pipefail

# Install homebrew
if [[ ! -x "$(command -v brew)" ]]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update
brew upgrade

brew install zsh
brew install ripgrep

WHICH_ZSH=$(command -v zsh)

if ! grep -q "$WHICH_ZSH" /etc/shells; then
  echo "$WHICH_ZSH" | sudo tee -a /etc/shells
fi

chsh -s "$WHICH_ZSH"

# Install rust
./install/rust.sh

# Install go
brew install go

# Install Spaceship
brew install spaceship

./install/link.sh

./install/configure_git.sh
