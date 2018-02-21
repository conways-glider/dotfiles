#!/bin/bash

# base16 shell
if [[ ! -d ~/.config/base16-shell ]]
then
  echo "installing base16-shell"
  git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
fi

# install brew
if ! type "brew" &> /dev/null
then
  echo "installing brew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# install zsh
if ! type "zsh" &> /dev/null
then
  echo "installing zsh"
  brew install zsh
fi

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install neovim
if ! type "nvim" &> /dev/null
then
  echo "installing neovim"
  brew install neovim
fi

# install python
if ! type "python3" &> /dev/null
then
  echo "installing python3"
  brew install python
fi

# install tmux
if ! type "tmux" &> /dev/null
then
  echo "installing tmux"
  brew install tmux
fi

if ! type "node" &> /dev/null
then
  echo "installing node"
  brew install node
fi

# install python dependency
if ! python3 -c "import neovim" &> /dev/null;
then
  echo "installing neovim python3 package"
  pip3 install neovim
fi

# install fonts
./install-font-mac.sh

# link everything
./link-mac.sh

# add cron jobs
./cron.sh

# install pure zsh
./install-pure-mac.sh

# install zsh plugins
./zsh-plugins.sh
