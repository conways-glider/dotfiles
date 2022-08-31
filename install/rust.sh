#!/usr/bin/env bash

set -eou pipefail

# Install rust
if [[ ! -x "$(command -v rustup)" ]]; then
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
fi

# Install cargo tools
cargo install --locked cargo-license
cargo install --locked cargo-deny
