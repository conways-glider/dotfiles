#!/usr/bin/env bash

set -eou pipefail

echo "Running snap installs"
sudo snap install kubectl --classic
sudo snap install insomnia
sudo snap install --classic code
sudo snap install discord
sudo snap install vlc
sudo snap install spotify

echo "Running post install tasks"
sudo snap connect discord:system-observe
