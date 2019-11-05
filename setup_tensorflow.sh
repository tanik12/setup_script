#!/bin/sh
cd ~/git
git clone https://github.com/tensorflow/tensorflow.git
cd tensorflow
git checkout r1.15
cd tensorflow/tools/pip_package
sudo pip install mock absl-py==0.7.0 astor==0.6.0 gast==0.2.2 google_pasta==0.1.6 keras_applications==1.0.8 keras_preprocessing==1.0.5 opt_einsum==2.3.2 enum34==1.1.6 tensorflow-estimator==1.15.1 backports.weakref==1.0rc1
sudo python setup.py install
pip install --user --upgrade tensorflow-gpu==1.15


