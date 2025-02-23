#!/usr/bin/env bash

set -eou pipefail

./scripts/link.sh

# OS Check
LOCAL_OS=$(uname -s | tr '[:upper:]' '[:lower:]')
export LOCAL_OS

if [[ "$LOCAL_OS" = "darwin" ]]; then
    echo "Mac Install"
    ./scripts/mac/brew.sh
elif [[ "$LOCAL_OS" = "linux" ]]; then
    echo "Linux Install (Debian)"
    ./scripts/debian/apt.sh
    ./scripts/debian/nvim.sh
    ./scripts/debian/spaceship.sh
    ./scripts/debian/go.sh
fi

WHICH_ZSH=$(command -v zsh)

echo "Checking if zsh is in /etc/shells"
if ! grep -q "$WHICH_ZSH" /etc/shells; then
  echo "Adding zsh to /etc/shells"
  echo "$WHICH_ZSH" | sudo tee -a /etc/shells
fi

echo "Setting zsh as default shell"
chsh -s "$WHICH_ZSH"

./scripts/rust.sh

./scripts/go.sh

./scripts/fzf.sh

./scripts/tmux.sh

./scripts/git.sh
