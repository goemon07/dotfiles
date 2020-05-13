#!/bin/bash

BASE_DIR="$HOME/dotfiles/"
CONFIG_DIR="$BASE_DIR/configs"

input="$BASE_DIR/paths"
while read line; do
    if [[ ! -z "${line// }" ]]; then
        if [[ -f "$HOME$line" ]]; then
            if [[ ! -d "$CONFIG_DIR${line%/*}" ]]; then mkdir $CONFIG_DIR${line%/*}; fi
            cp $HOME$line $CONFIG_DIR${line%/*}
            echo "OK: $line file copied."
        elif [[ -d "$HOME$line" ]]; then
            if [[ ! -d "$CONFIG_DIR$line" ]]; then mkdir $CONFIG_DIR$line; fi
            cp $HOME$line/* $CONFIG_DIR$line
            echo "OK: $line folder copied."
        else
            echo "FAIL: $line skipped. No such file or directory."
        fi
    fi
done < $input

echo "Done."
