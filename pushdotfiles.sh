#!/bin/bash

DIR="$HOME/dotfiles"
#HOST="t490s"

input="$DIR/paths"
while read line; do
    if [[ ! -z "${line// }" ]]; then
        if [[ -f "$DIR$line" ]]; then
            if [[ ! -d "$HOME${line%/*}" ]]; then mkdir $HOME${line%/*}; fi
            cp $DIR$line $HOME${line%/*}
            echo "OK: $line file imported."
        elif [[ -d "$DIR$line" ]]; then
            if [[ ! -d "$HOME$line" ]]; then mkdir $HOME$line; fi
            cp $DIR$line/* $HOME$line
            echo "OK: $line folder imported."
        else
            echo "FAIL: $line skipped. No such file or directory."
        fi
    fi
done < $input

echo "Done."
