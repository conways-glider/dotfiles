#!/usr/bin/env bash

set -eou pipefail

echo "Making .config folder"
mkdir -p ~/.config

# Link zellij config
echo "Linking zellij config"
rm -rf ~/.config/zellij
ln -sf "$(pwd)"/zellij ~/.config/zellij

# Link fish config
echo "Linking fish config"
rm -rf ~/.config/fish
ln -sf "$(pwd)"/fish ~/.config/fish

# Link fish config
echo "Linking fish config"
rm -rf ~/.config/fish
ln -sf "$(pwd)"/fish ~/.config/fish

# Link helix config
echo "Linking helix config"
rm -rf ~/.config/helix
ln -sf "$(pwd)"/helix ~/.config/helix

# Link gitignore
echo "Linking gitignore"
rm -f ~/.gitignore
ln -sf "$(pwd)"/git/gitignore ~/.gitignore
