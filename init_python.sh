#!/bin/zsh

PIP_PATH=`which pip`
sudo $PIP_PATH install --upgrade pip 

PIP_PATH=`which pip` # The path of pip changes after upgrade.
sudo $PIP_PATH install chainer
sudo $PIP_PATH install numpy 
sudo $PIP_PATH install scikit-learn
sudo $PIP_PATH install scipy
sudo $PIP_PATH install selenium
