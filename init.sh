#!/bin/zsh

sudo yum update
sudo yum -y install zsh

ZSH_PATH=`which zsh`
HERE="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"

$ZSH_PATH $HERE/init_dir.sh
$ZSH_PATH $HERE/init_zsh.sh
$ZSH_PATH $HERE/init_git.sh
$ZSH_PATH $HERE/init_vim.sh
$ZSH_PATH $HERE/init_python.sh
$ZSH_PATH $HERE/init_phantomjs.sh
