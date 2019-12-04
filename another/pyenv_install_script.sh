#!/bin/sh

#pyenvでanacondaのバージョン切換えする環境構築
cd ~/git #好きなディレクトリでgit cloneしてください。
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
git clone https://github.com/yyuu/pyenv-pip-rehash.git ~/.pyenv/plugins/pyenv-pip-rehash

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
source ~/.bashrc

#好きなanacondaのversionを選択してください。
pyenv install --list | grep anaconda
pyenv install anaconda3-2019.10

#必要であれば下記を実行
# pyenv shell anaconda3-2019.10            #pyenvでanacondaに切り替え。terminalを落としてもanacondaに維持したかったらglobalを使う。
# conda create -n py36 python=3.6 anaconda #anacondaに切り替えたら、anacondaで仮想環境を作る。
# source activate py36                     #作った仮想環境を使う方法。
