#!/bin/sh

#python versionup のやり方.今回はpython3.6を例にした.
#version指定
sudo add-apt-repository ppa:jonathonf/python-3.6 #Ubuntu16.10、17.04、17.10はUniverse Repositoryに含まれてるらしい。
sudo apt update
sudo apt install python3.6
echo "alias python3='/usr/bin/python3.6’" >> ~/.bashrc
source ~/.bashrc
