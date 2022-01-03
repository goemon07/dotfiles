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

## SETUP
Taken from [this article](https://mjones44.medium.com/storing-dotfiles-in-a-git-repository-53f765c0005d).

- Make an alias to refer to the repo from everywhere. Add the following line to the `.zshrc` or `.backrc` file.
```
alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
```

- Avoid noise by disabling the untracked files in the repo directory.
```
config config --local status.showUntrackedFiles no
```

- Track files with:
```
config add ~/.bashrc
config commit -m "add .bashrc file to dotfiles"
config push
```


### Install on a new system

- Create a script to backup the current dotfiles
```
#!/usr/bin/env bash

git clone --bare git@github.com:mrjones2014/dotfiles.git
$HOME/.dotfiles

# define config alias locally since the dotfiles
# aren't installed on the system yet
function config {
   git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}

# create a directory to backup existing dotfiles to
mkdir -p .dotfiles-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out dotfiles from git@github.com:mrjones2014/dotfiles.git";
else
  echo "Moving existing dotfiles to ~/.dotfiles-backup";
  config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .dotfiles-backup/{}
fi

# checkout dotfiles from repo
config checkout
config config status.showUntrackedFiles no
```

- And finally take all the new files:
```
curl https://raw.githubusercontent.com/mrjones2014/dotfiles/master/scripts/config-init | bash
```
