#!/bin/bash

DIR="$HOME/dotfiles"
#HOST="t490s"

cp $DIR/.config/i3/* $HOME/.config/i3/
cp $DIR/.config/i3status/* $HOME/.config/i3status/
cp $DIR/.config/ranger/* $HOME/.config/ranger/
cp $DIR/.config/nvim/init.vim $HOME/.config/nvim/
cp $DIR/.config/terminator/* $HOME/.config/terminator/
cp $DIR/.config/rofi/* $HOME/.config/rofi/
cp $DIR/.config/compton.conf $HOME/.config/
cp $DIR/.zshrc $HOME/
cp $DIR/.bashrc $HOME/

echo "Done."
