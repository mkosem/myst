#!/bin/bash

ST_VERSION=st-0.8.2
rm -rf $ST_VERSION
tar -xvf $ST_VERSION.tar.gz
pushd $ST_VERSION
patch < ../st-scrollback-0.8.2.diff
patch < ../st-scrollback-mouse-0.8.2.diff
patch < ../st-scrollback-mouse-altscreen-0.8.diff
patch < ../st-no_bold_colors-0.8.1.diff
cp ../config.h .
make
popd




