#!/bin/bash

DIR="$HOME/dotfiles"
#HOST="t490s"

input="$DIR/paths"
while read line; do
    if [[ ! -z "${line// }" ]]; then
        echo $line
        if [[ -f "$HOME$line" ]]; then
            if [[ ! -d "$DIR${line%/*}" ]]; then mkdir $DIR${line%/*}; fi
            cp $HOME$line $DIR
            echo "OK: $line file copied."
        elif [[ -d "$HOME$line" ]]; then
            if [[ ! -d "$DIR$line" ]]; then mkdir $DIR$line; fi
            cp $HOME$line/* $DIR$line
            echo "OK: $line folder copied."
        else
            echo "FAIL: $line skipped. No such file or directory."
        fi
    fi
done < $input

echo "Done."
