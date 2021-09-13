#!/usr/bin/env bash

set -eou pipefail

# Add Ubuntu Universe
add-apt-repository universe

# Update apt
apt update && apt upgrade

# Install items
apt -y install \
    shellcheck \
    curl \
    git-all \
    zsh \
    fonts-firacode \
    ripgrep

snap install --classic datagrip
snap install --classic clion
snap install --classic goland
snap install --classic webstorm
snap install --classic code
# snap install --classic alacritty
# snap install --classic heroku
# snap install guake
snap install spotify
snap install insomnia
snap install discord
snap connect discord:system-observe
