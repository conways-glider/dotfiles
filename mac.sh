#!/usr/bin/env bash

set -eou pipefail

# Install homebrew
if [[ ! -x "$(command -v brew)" ]]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update
brew upgrade

# Install zsh
brew install zsh

WHICH_ZSH=$(command -v zsh)

if [[ -z "$(grep "$WHICH_ZSH" /etc/shells)" ]]; then
  echo "$WHICH_ZSH" | sudo tee -a /etc/shell
fi

chsh -s "$WHICH_ZSH"

# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Install go
brew install go

# Install Base16 Shell
rm -rf ~/.config/base16-shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# Install Spaceship
brew install spaceship

# Link zsh config
rm -f ~/.zshrc
ln -sf "$(pwd)"/zsh/zshrc ~/.zshrc

# Link neovim config
#ln -sf $(pwd)/neovim ~/.config/nvim

./install/git.sh
