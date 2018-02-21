#!/bin/bash

# download firacode
read -p "install firacode? [y/n]" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
  echo "installing FiraCode font"
  mkdir -p ~/Library/Fonts

  git clone git@github.com:tonsky/FiraCode.git

  cp FiraCode/distr/ttf/* ~/Library/Fonts/

  rm -rf FiraCode
fi
