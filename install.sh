#!/usr/bin/env bash

set -eou pipefail

# OS Check
LOCAL_OS=$(uname -s | tr '[:upper:]' '[:lower:]')
export LOCAL_OS

if [[ "$LOCAL_OS" = "darwin" ]]; then
    echo "Mac Install"
    ./install/mac/brew.sh
elif [[ "$LOCAL_OS" = "linux" ]]; then
    echo "Linux Install (Ubuntu)"
    ./install/ubuntu/install.sh
    ./install/ubuntu/go.sh
    ./install/ubuntu/spaceship.sh
    ./install/ubuntu/mullvad.sh
    ./install/ubuntu/alacritty.sh
    ./install/ubuntu/microk8s.sh
    # ./install/ubuntu/docker.sh
    # ./install/ubuntu/kubernetes.sh
    # ./install/ubuntu/flatpak.sh
fi

WHICH_ZSH=$(command -v zsh)

echo "Checking if zsh is in /etc/shells"
if ! grep -q "$WHICH_ZSH" /etc/shells; then
  echo "Adding zsh to /etc/shells"
  echo "$WHICH_ZSH" | sudo tee -a /etc/shells
fi

echo "Setting zsh as default shell"
chsh -s "$WHICH_ZSH"

./install/rust.sh

./install/go.sh

./install/base16.sh

./install/link.sh

./install/fzf.sh

./install/git.sh
