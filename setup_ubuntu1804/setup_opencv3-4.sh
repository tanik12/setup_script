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
sudo apt-get -y install build-essential checkinstall cmake unzip pkg-config yasm
sudo apt-get -y install git gfortran python3-dev
sudo apt-get -y install libjpeg8-dev libjasper-dev libpng12-dev libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev libxine2-dev libv4l-dev
sudo apt-get -y install libjpeg-dev libpng-dev libtiff-dev libtbb-dev
sudo apt-get -y install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libatlas-base-dev libxvidcore-dev libx264-dev libgtk-3-dev

wget https://github.com/opencv/opencv/archive/3.4.0.zip -O opencv-3.4.0.zip
wget https://github.com/opencv/opencv_contrib/archive/3.4.0.zip -O opencv_contrib-3.4.0.zip
unzip opencv-3.4.0.zip
unzip opencv_contrib-3.4.0.zip

cd opencv-3.4.0
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_TBB=ON -D WITH_V4L=ON -D WITH_QT=ON -D WITH_OPENGL=ON -D WITH_NVCUVID=ON -D BUILD_opencv_cudacodec=OFF ..
make -j8 && sudo make install && sudo ldconfig
