#!/bin/bash

# general gcc make files

sudo apt-get install -y autoconf automake bison libtool pkg-config

sudo apt-get install -y diodon

#install xcape
sudo apt-get install -y git gcc make pkg-config libx11-dev libxtst-dev libxi-dev

mkdir -p xcape

cd xcape

git clone https://github.com/alols/xcape.git .

make

sudo make install

cd ..

rm -rf xcape 

echo "installing ruby gems"


# install tmuxinator
sudo gem install tmuxinator

echo "*** update me-local***"

# install scmbreeze
git clone git://github.com/ndbroadbent/scm_breeze.git ~/.scm_breeze

~/.scm_breeze/install.sh

echo "*** update bashrc and me-local***"

