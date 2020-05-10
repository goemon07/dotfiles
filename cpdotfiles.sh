#!/bin/bash

DIR="$HOME/dotfiles"
#HOST="t490s"

cp $HOME/.config/i3/* $DIR/.config/i3/
cp $HOME/.config/i3status/* $DIR/.config/i3status/
cp $HOME/.config/ranger/* $DIR/.config/ranger/
cp $HOME/.config/terminator/* $DIR/.config/terminator/
cp $HOME/.config/rofi/* $DIR/.config/rofi/
cp $HOME/.config/compton.conf $DIR/.config/
cp $HOME/.zshrc $DIR/
cp $HOME/.bashrc $DIR/

echo "Done."
