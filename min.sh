#!/bin/bash

set -e

git pull > /dev/null
git submodule update --init --recursive > /dev/null

cp bash/.bashrc $HOME && source $HOME/.bashrc
cp bash/.inputrc $HOME
cp bash/.bash_profile $HOME

cp vim/.vimrc $HOME
cp -r vim/.vim $HOME
