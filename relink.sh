#!/bin/bash

HIDDIR=hiddenfiles

echo "Relinking dotfiles in ~/ "
for file in $(ls $(pwd)/$HIDDIR/)
do
    rm -rf ~/.$file
    ln -s $(pwd)/$HIDDIR/$file ~/.$file
done
echo "Done."
