#!/bin/sh


ARCH=darwin-amd64
#ARCH=linux-amd64
#ARCH=linux-386
#ARCH=linux-arm
#ARCH=windows-amd64
#ARCH=windows-386

if [ ! -f gozouroppu ];then
    wget http://dn-gobuild5.qbox.me/gorelease/making/gozouroppu/master/${ARCH}/gozouroppu.zip
    unzip gozouroppu.zip
    rm -f gozouroppu.zip
fi

./gozouroppu -d `pwd` -i
