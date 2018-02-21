#!/bin/bash

# Link NVim Config
mkdir -p ~/.config/nvim
if [[ -f ~/.config/nvim/init.vim ]]
then
  rm -rf ~/.config/nvim/*
fi
ln -s $(pwd)/neovim/* ~/.config/nvim

# Link ZSH RC
if [[ -f ~/.zshrc ]]
then
  rm ~/.zshrc
fi
ln -s $(pwd)/zsh/zshrc ~/.zshrc

# Link npmrc
if [[ -f ~/.npmrc ]]
then
  rm ~/.npmrc
fi
ln -s $(pwd)/npmrc ~/.npmrc

# Link tmux conf
if [[ -f ~/.tmux.conf ]]
then
  rm ~/.tmux.conf
fi
ln -s $(pwd)/tmux.conf ~/.tmux.conf
