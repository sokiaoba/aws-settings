#!/bin/zsh

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
else
	echo "seems you already installed phantomjs."
fi
