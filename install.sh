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
    echo "Linux Install"
    ./scripts/debian/apt.sh
    ./scripts/debian/go.sh
fi

echo "Checking if zsh is in /etc/shells"
WHICH_ZSH=$(command -v zsh)
if ! grep -q "$WHICH_ZSH" /etc/shells; then
  echo "Adding zsh to /etc/shells"
  echo "$WHICH_ZSH" | sudo tee -a /etc/shells
fi

echo "Checking if fish is in /etc/shells"
WHICH_FISH=$(command -v fish)
if ! grep -q "$WHICH_FISH" /etc/shells; then
  echo "Adding fish to /etc/shells"
  echo "$WHICH_FISH" | sudo tee -a /etc/shells
fi

echo "Setting fish as default shell"
chsh -s "$WHICH_FISH"

./scripts/rust.sh

./scripts/go.sh

./scripts/python.sh

./scripts/fzf.sh

./scripts/git.sh
