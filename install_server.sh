#!/usr/bin/env bash

set -eou pipefail

./install/link_server.sh

./install/server/apt.sh

./install/ubuntu/spaceship.sh

WHICH_ZSH=$(command -v zsh)

echo "Checking if zsh is in /etc/shells"
if ! grep -q "$WHICH_ZSH" /etc/shells; then
  echo "Adding zsh to /etc/shells"
  echo "$WHICH_ZSH" | sudo tee -a /etc/shells
fi

echo "Setting zsh as default shell"
chsh -s "$WHICH_ZSH"

./install/tmux.sh

./install/git.sh

./install/server/unprivileged_ports.sh

./install/ubuntu/docker.sh
