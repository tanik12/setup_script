#!/bin/sh

#cd ~
#mkdir git
#cd git
cd ~
cd git

sudo apt update
sudo apt upgrade

# libjasper-devを入れるためにリポジトリを追加
add-apt-repository "deb http://security.ubuntu.com/ubuntu bionic-security main"

# 依存パッケージをインストールする
sudo apt -y install build-essential checkinstall cmake unzip pkg-config yasm
sudo apt -y install git gfortran python3-dev
sudo apt -y install libjpeg8-dev libjasper-dev libpng12-dev libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev libxine2-dev libv4l-dev
sudo apt -y install libjpeg-dev libpng-dev libtiff-dev libtbb-dev
sudo apt -y install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libatlas-base-dev libxvidcore-dev libx264-dev libgtk-3-dev
sudo apt install -y python3-pyqt5 

wget -O opencv.zip https://github.com/opencv/opencv/archive/4.5.1.zip -O opencv-4.5.1.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/master.zip -O opencv_contrib-4.5.1.zip
unzip opencv-4.5.1.zip
unzip opencv_contrib-4.5.1.zip
cd opencv-4.5.1

#wget https://github.com/opencv/opencv/archive/3.4.0.zip -O opencv-3.4.0.zip
#wget https://github.com/opencv/opencv_contrib/archive/3.4.0.zip -O opencv_contrib-3.4.0.zip
#unzip opencv-3.4.0.zip
#unzip opencv_contrib-3.4.0.zip
#cd opencv-3.4.0

mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D OPENCV_EXTRA_MODULES_PATH=$HOME/git/opencv_contrib-master/modules -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_TBB=ON -D WITH_V4L=ON -D WITH_QT=ON -D WITH_OPENGL=ON -D WITH_NVCUVID=ON -D BUILD_opencv_cudacodec=OFF ..
make -j8 && sudo make install && sudo ldconfig
