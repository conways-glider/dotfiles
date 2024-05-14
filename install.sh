#!/usr/bin/env bash

set -eou pipefail

./install/link.sh

# OS Check
LOCAL_OS=$(uname -s | tr '[:upper:]' '[:lower:]')
export LOCAL_OS

if [[ "$LOCAL_OS" = "darwin" ]]; then
    echo "Mac Install"
    ./install/mac/brew.sh
elif [[ "$LOCAL_OS" = "linux" ]]; then
    echo "Linux Install (Debian)"
    ./install/debian/apt.sh
    ./install/debian/nvim.sh
    ./install/debian/spaceship.sh
    ./install/debian/go.sh
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

./install/fzf.sh

./install/tmux.sh

./install/git.sh
