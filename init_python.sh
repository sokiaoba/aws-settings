#!/bin/zsh

PIP_PATH=`which pip`
sudo $PIP_PATH install --upgrade pip 

PIP_PATH=`which pip` # The path of pip changes after upgrade.
sudo $PIP_PATH install numpy 
sudo $PIP_PATH install scikit-learn
sudo $PIP_PATH install scipy
sudo $PIP_PATH install selenium

#chainer if gpu = true
sudo CUDA_PATH=/opt/nvidia/cuda $PIP_PATH install chainer
sudo yum install -y hdf5-devel
sudo CUDA_PATH=/opt/nvidia/cuda pip install chainer

#chainer if gpu = false
#sudo $PIP_PATH install chainer
