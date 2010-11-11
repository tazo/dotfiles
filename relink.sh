#!/bin/bash

HIDDIR=$(pwd)/hiddenfiles

echo "Relinking dotfiles in ~/ "
for file in $(ls $HIDDIR/)
do
    rm -rf ~/.$file
    ln -s $HIDDIR/$file ~/.$file
done
echo "Done."
