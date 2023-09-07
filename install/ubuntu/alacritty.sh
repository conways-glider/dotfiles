#!/usr/bin/env bash

set -eou pipefail

echo "Installing alacritty dependencies"
sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

echo "Install alacritty"
cargo install alacritty
