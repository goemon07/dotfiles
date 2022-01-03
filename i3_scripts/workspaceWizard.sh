#!/bin/bash

i3-msg 'workspace 4; append_layout ~/.config/i3/workspace-4.json'
sleep 2
#i3-msg 'workspace 1; exec firefox; sleep 2'
i3-msg 'workspace 4; exec spotify'
sleep 2
i3-msg 'workspace 4; exec keepassxc'
