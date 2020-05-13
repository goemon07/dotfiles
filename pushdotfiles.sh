#!/bin/bash

BASE_DIR="$HOME/dotfiles/"
CONFIG_DIR="$BASE_DIR/configs"

input="$BASE_DIR/paths"
while read line; do
    if [[ ! -z "${line// }" ]]; then
        if [[ -f "$CONFIG_DIR$line" ]]; then
            if [[ ! -d "$HOME${line%/*}" ]]; then mkdir $HOME${line%/*}; fi
            cp $CONFIG_DIR$line $HOME${line%/*}
            echo "OK: $line file imported."
        elif [[ -d "$CONFIG_DIR$line" ]]; then
            if [[ ! -d "$HOME$line" ]]; then mkdir $HOME$line; fi
            cp $CONFIG_DIR$line/* $HOME$line
            echo "OK: $line folder imported."
        else
            echo "FAIL: $line skipped. No such file or directory."
        fi
    fi
done < $input

echo "Done."
