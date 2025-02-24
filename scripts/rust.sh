#!/usr/bin/env bash

set -eou pipefail

# Install rust
echo "Checking for rust install"
if [[ ! -x "$(command -v rustup)" ]]; then
  echo "Installing rust"
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
fi

echo "Setting up rust env"
source "$HOME/.cargo/env"

echo "Installing cargo tools"
cargo install --locked cargo-about
cargo install cargo-audit
cargo install --locked cargo-deny
cargo install cargo-license
cargo install cargo-msrv
cargo install --locked cargo-mutants
cargo install cargo-tarpaulin
cargo install cargo-vet

echo "Installing other rust-based tools"
cargo install --locked bacon
cargo install tinty
cargo install --locked zellij
cargo install eza
cargo install fd-find
# TODO: Maybe install ripgrep here?
