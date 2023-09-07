#!/usr/bin/env bash

set -eou pipefail

echo "Installing alacritty dependencies"
sudo apt install -y cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

echo "Installing alacritty man page dependencies"
sudo apt install -y gzip scdoc

RUNNING_LOCATION=$(pwd)

echo "Cloning alacritty repo"
git clone https://github.com/alacritty/alacritty.git alacritty-repo

echo "Setting up clean up"
clean_up () {
    ARG=$?

    echo "Cleaning up"
    echo "Removing alacritty repo"
    cd $RUNNING_LOCATION
    rm -rf alacritty-repo

    exit $ARG
}
trap clean_up EXIT

cd alacritty-repo

echo "Building alacritty"
cargo build --release

echo "Setting up terminfo"
sudo tic -xe alacritty,alacritty-direct extra/alacritty.info

echo "Setting up desktop entry"
sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database

echo "Setting up man pages"
sudo mkdir -p /usr/local/share/man/man1
sudo mkdir -p /usr/local/share/man/man5
scdoc < extra/man/alacritty.1.scd | gzip -c | sudo tee /usr/local/share/man/man1/alacritty.1.gz > /dev/null
scdoc < extra/man/alacritty-msg.1.scd | gzip -c | sudo tee /usr/local/share/man/man1/alacritty-msg.1.gz > /dev/null
scdoc < extra/man/alacritty.5.scd | gzip -c | sudo tee /usr/local/share/man/man5/alacritty.5.gz > /dev/null
scdoc < extra/man/alacritty-bindings.5.scd | gzip -c | sudo tee /usr/local/share/man/man5/alacritty-bindings.5.gz > /dev/null
