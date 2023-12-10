#!/usr/bin/env bash

set -eou pipefail

# Link zsh config
echo "Linking zsh config"
rm -f ~/.zshrc
ln -sf "$(pwd)"/zsh/zshrc ~/.zshrc

echo "Making .config folder"
mkdir -p ~/.config

# Link helix config
echo "Linking helix config"
rm -rf ~/.config/helix
ln -sf "$(pwd)"/helix ~/.config/helix

# Link vim config
echo "Linking vim config"
rm -rf ~/.vimrc
ln -sf "$(pwd)"/vim/vimrc ~/.vimrc

# Link gitignore
echo "Linking gitignore"
rm -f ~/.gitignore
ln -sf "$(pwd)"/git/gitignore ~/.gitignore

# Link tmux config
echo "Linking tmux config"
rm -f ~/.tmux.conf
ln -sf "$(pwd)"/tmux/tmux.conf ~/.tmux.conf
