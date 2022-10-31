#!/usr/bin/env bash

set -eou pipefail

# Install Base16 Shell
echo "Installing Base16 Shell"
rm -rf ~/.config/base16-shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
