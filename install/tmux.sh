#!/usr/bin/env bash

set -eou pipefail

# Install tmux plugin manager
echo "Installing tmux plugin manager"
rm -rf ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
