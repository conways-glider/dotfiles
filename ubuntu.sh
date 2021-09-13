#!/usr/bin/env bash

set -eou pipefail

# Make required directories
mkdir -p ~/.config
mkdir -p ~/.zsh

sudo ./install/install_ubuntu.sh

# Install docker
if [[ ! -x "$(command -v docker)" ]]; then
  curl -fsSL https://get.docker.com -o get-docker.sh

  sudo sh get-docker.sh

  rm -f get-docker.sh

  # Add user to docker groud
  sudo groupadd docker
  sudo usermod -aG docker "$USER"
fi

# Install rust
if [[ ! -x "$(command -v rustup)" ]]; then
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
fi

# Install go
if [[ ! -x "$(command -v go)" ]]; then
  ./install/install_go_ubuntu.sh
fi

# Install zsh and make default
chsh -s "$(command -v zsh)"

# Install Base16 Shell
rm -rf ~/.config/base16-shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# Install Spaceship
rm -rf ~/.zsh/spaceship
git clone https://github.com/spaceship-prompt/spaceship-prompt.git --depth=1 ~/.zsh/spaceship
ln -sf ~/.zsh/spaceship/spaceship.zsh ~/.zsh/prompt_spaceship_setup

# Link zsh config
rm -f ~/.zshrc
ln -sf "$(pwd)"/zsh/zshrc ~/.zshrc

# Link neovim config
#ln -sf $(pwd)/neovim ~/.config/nvim

./install/git.sh
