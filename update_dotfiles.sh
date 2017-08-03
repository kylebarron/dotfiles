#! /usr/bin/env bash

# Get directory of where script is located
# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Copy Atom dotfiles
mkdir $DIR/atom
cp ~/.atom/config.cson $DIR/atom/
cp ~/.atom/github.cson $DIR/atom/
cp ~/.atom/init.coffee $DIR/atom/
cp ~/.atom/keymap.cson $DIR/atom/
cp ~/.atom/projects.cson $DIR/atom/
cp ~/.atom/remoteEdit.json $DIR/atom/
cp ~/.atom/snippets.cson $DIR/atom/
cp ~/.atom/styles.less $DIR/atom/
# Copy list of Atom packages
apm list --installed --bare > $DIR/atom/$(hostname)_package_list.txt
# Add Atom Material Icon
wget "https://www.dropbox.com/s/8gyn40sw95626dx/Atom-MD-Icon.zip?dl=1" -O "$DIR/atom_icon"
unzip $DIR/atom_icon
cp $DIR/Atom\ Icon/PNGs/icon_512x512@2x.png $DIR/atom/atom_icon.png
rm $DIR/atom_icon
rm -r $DIR/Atom\ Icon/ __MACOSX/

# Copy ZSH material theme and .zshrc
mkdir $DIR/zsh
cp ~/.zshrc $DIR/zsh/zshrc_$(hostname)
cp ~/.oh-my-zsh/themes/materialshell.zsh-theme $DIR/zsh/

# Copy .bashrc
mkdir $DIR/bash
cp ~/.bashrc $DIR/bash/bashrc_$(hostname)

# Copy .gitconfig
mkdir $DIR/git
cp ~/.gitconfig $DIR/git/gitconfig_$(hostname)

# Copy RStudio user settings
mkdir $DIR/rstudio
cp ~/.rstudio-desktop/monitored/user-settings/user-settings $DIR/rstudio/

# Copy autokey files
mkdir $DIR/autokey
cp ~/.config/autokey/data/Sample\ Scripts/run_stata.py          $DIR/autokey/
cp ~/.config/autokey/data/Sample\ Scripts/.run_stata.json       $DIR/autokey/
cp ~/.config/autokey/data/Sample\ Scripts/run_stata_chunk.py    $DIR/autokey/
cp ~/.config/autokey/data/Sample\ Scripts/.run_stata_chunk.json $DIR/autokey/