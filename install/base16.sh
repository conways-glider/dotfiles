#!/usr/bin/env bash

set -eou pipefail

# Install Base16 Shell
echo "Installing Base16 Shell"
rm -rf ~/.config/base16-shell
git clone https://github.com/tinted-theming/base16-shell.git \
  $HOME/.config/base16-shell
