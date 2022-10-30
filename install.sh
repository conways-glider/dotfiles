#!/usr/bin/env bash

set -eou pipefail

./install/brew.sh

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

./install/link.sh

./install/fzf.sh

./install/configure_git.sh
