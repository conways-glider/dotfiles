#!/usr/bin/env bash

set -eou pipefail

# Install uv
echo "Checking for uv install"
if [[ ! -x "$(command -v uv)" ]]; then
    echo "Installing uv"
    curl -LsSf https://astral.sh/uv/install.sh | sh
fi

# Install ruff
uv tool install ruff@latest
