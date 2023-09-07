#!/usr/bin/env bash

set -eou pipefail

echo "Installing flatpak"
sudo apt install -y flatpak

echo "Installing flatpak software plugin"
sudo apt install -y gnome-software-plugin-flatpak

echo "Adding flathub repo"
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
