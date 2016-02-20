#!/bin/sh

if [ ! -d $HOME/.emacs.d ];then
    echo "Create $HOME/.emacs.d"
    mkdir -p $HOME/.emacs.d
fi

if [ -f $HOME/.emacs.d/install.sh ];then
    echo "Remove $HOME/.emacs.d/init.el"
    rm -f $HOME/.emacs.d/init.el
fi

if [ ! -h $HOME/.emacs.d/init.el ];then
    echo "Link $HOME/.emacs.d/init.el"
    ln -s `pwd`/.emacs.d/init.el $HOME/.emacs.d
fi
