#!/bin/sh
set -e

SCRIPT=$(readlink -f $0)
SCRIPT_DIR=$(dirname $SCRIPT)
cd $SCRIPT_DIR
cat $SCRIPT_DIR/vimrcs/basic.vim > ~/.vimrc
echo "Installed the Basic Vim configuration successfully! Enjoy :-)"
