#!/usr/bin/env bash

set -eou pipefail

# Install rust
echo "Checking for rust install"
if [[ ! -x "$(command -v rustup)" ]]; then
  echo "Installing rust"
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
fi

# Install cargo tools
echo "Installing cargo tools"
cargo install cargo-audit
cargo install cargo-license
cargo install cargo-msrv
cargo install --locked cargo-deny
