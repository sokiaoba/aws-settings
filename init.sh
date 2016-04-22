#!/bin/zsh
autoload -Uz catch
autoload -Uz throw

# git
git config --global user.name "sokiaoba"
git config --global user.email souki.aoba@gmail.com
git config --global core.editor "vim"
git config --global alias.br branch
git config --global alias.cm commit
git config --global alias.co checkout
git config --global alias.st status

# zsh
sudo yum -y install zsh

cd ~/
git clone https://github.com/sokiaoba/zsh-settings.git
cp zsh-settings/.zshrc ./

ZSH_PATH=`which zsh`
sudo chsh ec2-user

# vim
git clone https://github.com/sokiaoba/vim-settings.git
cp vim-settings/.vimrc ./

mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

# python
PIP_PATH=`which pip`
sudo $PIP_PATH install --upgrade pip 

PIP_PATH=`which pip`
sudo $PIP_PATH install chainer
sudo $PIP_PATH install numpy 
sudo $PIP_PATH install scikit-learn
sudo $PIP_PATH install scipy
sudo $PIP_PATH install selenium

# phantomjs
PHANTOMJS_PATH="/usr/local/bin/phantomjs"
if [ ! -f $PHANTOMJS_PATH ]; then
	cd /usr/local/src/
	{
		sudo wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 || throw "e"
		sudo tar jxf phantomjs-2.1.1-linux-x86_64.tar.bz2 
		sudo ln -s phantomjs-2.1.1-linux-x86_64 phantomjs
		sudo ln -s /usr/local/src/phantomjs/bin/phantomjs $PHANTOMJS_PATH
	} always {
		if catch "e"; then
			echo "you've failed to download phantomjs. do it again later."
		elif; then
			echo "you've finished settings."
		fi
	}
fi