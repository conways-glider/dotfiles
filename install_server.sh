#!/usr/bin/env bash

set -eou pipefail

./scripts/link_server.sh

./scripts/server/apt.sh

WHICH_ZSH=$(command -v zsh)

echo "Checking if zsh is in /etc/shells"
if ! grep -q "$WHICH_ZSH" /etc/shells; then
  echo "Adding zsh to /etc/shells"
  echo "$WHICH_ZSH" | sudo tee -a /etc/shells
fi

echo "Setting zsh as default shell"
chsh -s "$WHICH_ZSH"

./scripts/git.sh

# ./scripts/server/unprivileged_ports.sh

./scripts/debian/docker.sh

./scripts/debian/1password-cli.sh
