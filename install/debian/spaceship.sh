#!/usr/bin/env bash

set -eou pipefail

echo "Installing spaceship"

mkdir -p "$HOME/.zsh"

rm -rf ~/.zsh/spaceship
git clone --depth=1 https://github.com/spaceship-prompt/spaceship-prompt.git "$HOME/.zsh/spaceship"
