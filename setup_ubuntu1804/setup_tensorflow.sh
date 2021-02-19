#!/bin/sh

#sudo apt install python-pip python3-pip
#pip install --upgrade pip
#pip3 install --upgrade pip

cd ~/git
git clone https://github.com/tensorflow/tensorflow.git
cd tensorflow
git checkout r1.15
cd tensorflow/tools/pip_package
pip3 install mock absl-py==0.7.0 astor==0.6.0 gast==0.2.2 google_pasta==0.1.6 keras_applications==1.0.8 keras_preprocessing==1.0.5 opt_einsum==2.3.2 enum34==1.1.6 tensorflow-estimator==1.15.1 backports.weakref==1.0rc1
sudo python setup.py install
sudo pip install --user --upgrade tensorflow==1.15
#python3.7でTensorflowをインストールするとうまく動作しないので、python3.6が推奨。
#1.14まではCPU版とGPU版で分かれていたが、1.15はCPU版とGPU版共にpip install --user --upgrade tensorflowでinstallすること。
