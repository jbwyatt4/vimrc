#!/bin/sh
set -e

SCRIPT=$(readlink -f $0)
SCRIPT_DIR=$(dirname $SCRIPT)
cd $SCRIPT_DIR

echo "set runtimepath+=$SCRIPT_DIR

source $SCRIPT_DIR/vimrcs/basic.vim
source $SCRIPT_DIR/vimrcs/filetypes.vim
source $SCRIPT_DIR/vimrcs/plugins_config.vim
source $SCRIPT_DIR/vimrcs/extended.vim

try
source $SCRIPT_DIR/my_configs.vim
catch
endtry" > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
