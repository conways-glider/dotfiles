#!/bin/bash

# base16 shell
if [[ ! -d ~/.config/base16-shell ]]
then
  echo "installing base16-shell"
  git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
fi

# install zsh
if ! type "zsh" &> /dev/null
then
  echo "installing zsh"
  sudo apt -y install zsh
fi

# install curl
if ! type "curl" &> /dev/null
then
  echo "installing curl"
  sudo apt -y install curl
fi

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install neovim
if ! type "nvim" &> /dev/null
then
  echo "installing neovim"
  sudo apt -y install neovim
fi

# install tmux
if ! type "tmux" &> /dev/null
then
  echo "installing tmux"
  snap install tmux --classic
fi

if ! type "node" &> /dev/null
then
  echo "installing node"
  sudo snap install node --channel=10/stable --classic
fi

# install python3
if ! type "python3" &> /dev/null;
then
  echo "installing python3"
  sudo apt -y install python3
fi

# install pip3
if ! type "python3" &> /dev/null;
then
  echo "installing pip3"
  sudo apt -y install python3-pip
fi

# install neovim python dependency
if ! python3 -c "import neovim" &> /dev/null;
then
  echo "installing neovim python3 package"
  pip3 install neovim
fi

# install pipenv dependency
if ! python3 -c "import pipenv" &> /dev/null;
then
  echo "installing pipenv python3 package"
  pip3 install pipenv --user
fi


# install fonts
./install-font-ubuntu.sh

# link everything
./link-ubuntu.sh

# add cron jobs
./cron.sh

# install pure zsh
./install-pure-ubuntu.sh

# install zsh plugins
./zsh-plugins.sh
