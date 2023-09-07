#!/usr/bin/env bash

set -eou pipefail

# Link zsh config
echo "Linking zsh config"
rm -f ~/.zshrc
ln -sf "$(pwd)"/zsh/zshrc ~/.zshrc

# Link neovim config
echo "Linking neovim config"
rm -rf ~/.config/nvim
ln -sf "$(pwd)"/neovim ~/.config/nvim

# Link gitignore
echo "Linking gitignore"
rm -f ~/.gitignore
ln -sf "$(pwd)"/git/gitignore ~/.gitignore

# Link alacritty config
echo "Linking gitignore"
rm -f ~/.alacritty.toml
ln -sf "$(pwd)"/alacritty/alacritty.toml ~/.alacritty.toml
