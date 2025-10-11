#!/usr/bin/env bash

set -eou pipefail

LOCAL_OS=$(uname -s | tr '[:upper:]' '[:lower:]')

echo "Making .config folder"
mkdir -p ~/.config

# Link zellij config
echo "Linking zellij config"
rm -rf ~/.config/zellij
mkdir -p ~/.config/zellij
if [[ "$LOCAL_OS" = "darwin" ]]; then
    echo "Mac Install"
    ln -sf "$(pwd)"/zellij/mac_config.kdl ~/.config/zellij/config.kdl
elif [[ "$LOCAL_OS" = "linux" ]]; then
    echo "Linux Install"
    ln -sf "$(pwd)"/zellij/linux_config.kdl ~/.config/zellij/config.kdl
fi


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

# Link alacritty config
echo "Linking alacritty config"
rm -f ~/.alacritty.toml
if [[ "$LOCAL_OS" = "darwin" ]]; then
    echo "Mac Install"
    ln -sf "$(pwd)"/alacritty/mac_alacritty.toml ~/.alacritty.toml
elif [[ "$LOCAL_OS" = "linux" ]]; then
    echo "Linux Install"
    ln -sf "$(pwd)"/alacritty/linux_alacritty.toml ~/.alacritty.toml
fi
