#!/usr/bin/env bash

set -eou pipefail

# Install Base16 Shell
echo "Installing Base16 Shell"
rm -rf ~/.config/base16-shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# Link zsh config
echo "Linking zsh config"
rm -f ~/.zshrc
ln -sf "$(pwd)"/zsh/zshrc ~/.zshrc

# Install tmux plugin manager
echo "Installing tmux plugin manager"
rm -rf ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Link tmux config
echo "Linking tmux config"
rm -f ~/.tmux.conf
ln -sf "$(pwd)"/tmux/tmux.conf ~/.tmux.conf

# Link neovim config
echo "Linking neovim config"
rm -rf ~/.config/nvim
ln -sf "$(pwd)"/neovim ~/.config/nvim

# Link gitignore
echo "Linking gitignore"
rm -f ~/.gitignore
ln -sf "$(pwd)"/git/gitignore ~/.gitignore
