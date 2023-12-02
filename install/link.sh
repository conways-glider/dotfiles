#!/usr/bin/env bash

set -eou pipefail

# Link zsh config
echo "Linking zsh config"
rm -f ~/.zshrc
ln -sf "$(pwd)"/zsh/zshrc ~/.zshrc

echo "Making .config folder"
mkdir -p ~/.config

# Link neovim config
# echo "Linking neovim config"
# rm -rf ~/.config/nvim
# ln -sf "$(pwd)"/neovim ~/.config/nvim

# Link vim config
echo "Linking vim config"
rm -rf ~/.vimrc
ln -sf "$(pwd)"/vim/vimrc ~/.vimrc

# Link gitignore
echo "Linking gitignore"
rm -f ~/.gitignore
ln -sf "$(pwd)"/git/gitignore ~/.gitignore

# Link alacritty config
echo "Linking alacritty config"
rm -f ~/.alacritty.toml
ln -sf "$(pwd)"/alacritty/alacritty.toml ~/.alacritty.toml

# Link tmux config
echo "Linking tmux config"
rm -f ~/.tmux.conf
ln -sf "$(pwd)"/tmux/tmux.conf ~/.tmux.conf
