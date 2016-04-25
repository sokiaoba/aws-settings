#!/bin/zsh

ZSH_PATH=`which zsh`
sudo chsh ec2-user

cd ~/
git clone https://github.com/sokiaoba/zsh-settings.git
cp zsh-settings/.zshrc ./
cp zsh-settings/.zshenv ./
