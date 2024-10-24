#!/bin/sh

set -e

git pull > /dev/null

cp bash/.bashrc $HOME
cp bash/.inputrc $HOME
cp bash/.bash_profile $HOME

cp vim/.vimrc $HOME
