#!/usr/bin/env bash

set -eou pipefail

./install/mac/brew.sh

WHICH_ZSH=$(command -v zsh)

if ! grep -q "$WHICH_ZSH" /etc/shells; then
  echo "$WHICH_ZSH" | sudo tee -a /etc/shells
fi

chsh -s "$WHICH_ZSH"

./install/rust.sh

./install/link.sh

./install/fzf.sh

./install/nvm.sh

./install/configure_git.sh
