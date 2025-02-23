#!/usr/bin/env bash

set -eou pipefail

echo "Installing fzf"

rm -rf ~/.fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
