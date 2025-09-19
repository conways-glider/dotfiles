#!/usr/bin/env bash

set -eou pipefail

# Install uv
echo "Checking for uv install"
if [[ ! -x "$(command -v uv)" ]]; then
    echo "Installing uv"
    curl -LsSf https://astral.sh/uv/install.sh | sh
fi

# Install ruff
if [[ -x "$(command -v uv)" ]]; then
    echo "Installing ruff"
    uv tool install ruff@latest
fi

# Set up uv shell completions for fish
echo 'uv generate-shell-completion fish | source' > ~/.config/fish/completions/uv.fish
