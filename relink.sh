#!/bin/bash

HIDDIR=$(pwd)/hiddenfiles
SCRIPTSDIR=$(pwd)/scripts

echo "Relinking dotfiles in ~/ "
for file in $(ls $HIDDIR/)
do
    rm -rf ~/.$file
    ln -s $HIDDIR/$file ~/.$file
done

echo "Relinking scripts in ~/local/scripts/ "
if [ ! -d ~/local/scripts ] ; then
    mkdir -p ~/local/scripts
fi
for file in $(ls $SCRIPTSDIR/)
do
    rm -rf ~/local/scripts/$file
    ln -s $SCRIPTSDIR/$file ~/local/scripts/$file
done

echo "Done."
