#!/bin/sh

sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.0.130-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1804_10.0.130-1_amd64.deb
sudo apt update -y
sudo apt install -y --no-install-recommends cuda-10-0
#sudo reboot

rm cuda-repo-ubuntu1804_10.0.130-1_amd64.deb
export PATH="/usr/local/cuda/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda/lib64:$LD_LIBRARY_PATH"
echo 'PATH=/usr/local/cuda/bin:$PATH' >> ~/.bashrc
echo 'LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc

sudo apt update -y
wget http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/nvidia-machine-learning-repo-ubuntu1804_1.0.0-1_amd64.deb
sudo apt install ./nvidia-machine-learning-repo-ubuntu1804_1.0.0-1_amd64.deb -y
sudo apt-get install -y --no-install-recommends libcudnn7 libcudnn7-dev -y
rm nvidia-machine-learning-repo-ubuntu1804_1.0.0-1_amd64.deb
sudo reboot
