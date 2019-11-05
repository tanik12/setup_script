#!/bin/sh

sudo apt update -y
wget http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1604/x86_64/nvidia-machine-learning-repo-ubuntu1604_1.0.0-1_amd64.deb
sudo apt install ./nvidia-machine-learning-repo-ubuntu1604_1.0.0-1_amd64.deb -y
sudo apt-get install -y --no-install-recommends libcudnn7 libcudnn7-dev -y
rm nvidia-machine-learning-repo-ubuntu1604_1.0.0-1_amd64.deb
sudo reboot
