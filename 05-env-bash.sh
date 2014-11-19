#!/bin/bash

git clone git@github.com:hspin/env_bash.git $HOME/.hms

cp $HOME/.hms/gitconfig $HOME/.gitconfig
cp -r $HOME/.hms/xgs $HOME/.xgs/
ln -s $HOME/.hms/bin $HOME/.bin

bash $HOME/.hms/dot/all-setup.sh

echo ""
echo "******************"
echo "please fix gitconfig local user"
echo "******************"
echo ""
