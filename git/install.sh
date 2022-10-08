#!/bin/sh
install -b gitconfig $HOME/.gitconfig
install -b gitignore $HOME/.gitignore
mkdir -p $HOME/bin
install -m 755 git-tree $HOME/bin/git-tree
