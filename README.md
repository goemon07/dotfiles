# dotfiles
Here a collection of configuration files are collected. The aim is to avoid spending time reconfiguring a brand new environment, keep using same tweaks across different environments.

## Collecting config files
The `cpdotfiles.sh` script collects all the local configuration listed in `paths` file (whether is a file or an entire directory) into `configs` directory. One will be ready to review and, eventually, push changes and tweaks after the script has been executed.

## Updating local config files
The `pushdotfiles.sh` script aims to distribute the config files contained in this repository into their specific local paths, specified again in `paths` file.

## Scripts
In `scripts` folder I use to collect useful scripts for making configurations, get informations from windows and so on.

## Notes
- Paths specified in `paths` file are concatenated with your `$HOME`, therefore specify paths starting from that point.
