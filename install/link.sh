#!/usr/bin/env bash

set -eou pipefail

# Install Base16 Shell
rm -rf ~/.config/base16-shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# Link zsh config
rm -f ~/.zshrc
ln -sf "$(pwd)"/zsh/zshrc ~/.zshrc
rm -f ~/.zprofile
ln -sf "$(pwd)"/zsh/zprofile ~/.zprofile


# Link neovim config
rm -rf ~/.config/nvim
ln -sf "$(pwd)"/neovim ~/.config/nvim

# Link gitignore
rm -f ~/.gitignore
ln -sf "$(pwd)"/git/gitignore ~/.gitignore
