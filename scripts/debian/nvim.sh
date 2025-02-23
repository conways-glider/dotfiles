#!/usr/bin/env bash

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz

clean_up () {
    ARG=$?

    echo "Cleaning up"
    echo "Removing nvim .tar.gz"
    rm -rf nvim-linux64.tar.gz

    exit $ARG
}
trap clean_up EXIT

sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
