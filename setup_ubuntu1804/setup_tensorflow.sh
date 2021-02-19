#!/bin/sh

sudo apt install python-pip python3-pip
pip3 install --upgrade pip
sudo apt update
#sudo apt install python3-dev python3-pip python3-venv

cd ~/git
git clone https://github.com/tensorflow/tensorflow.git
cd tensorflow
git checkout r1.15
cd tensorflow/tools/pip_package
pip3 install mock absl-py==0.7.0 astor==0.6.0 gast==0.2.2 google_pasta==0.1.6 keras_applications==1.0.8 keras_preprocessing==1.0.5 opt_einsum==2.3.2 enum34==1.1.6 tensorflow-estimator==1.15.1 backports.weakref==1.0rc1
sudo python3 setup.py install
sudo pip3 install --user --upgrade tensorflow-gpu==1.15
