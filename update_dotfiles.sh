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
# cp ~/.atom/projects.cson $DIR/atom/
cp ~/.atom/remoteEdit.json $DIR/atom/
cp ~/.atom/snippets.cson $DIR/atom/
cp ~/.atom/styles.less $DIR/atom/

# Copy ZSH material theme and .zshrc
mkdir $DIR/zsh
cp ~/.zshrc $DIR/zsh/
cp ~/.oh-my-zsh/themes/materialshell.zsh-theme $DIR/zsh/

# Copy .bashrc
mkdir $DIR/bash
cp ~/.bashrc $DIR/bash

# Copy .gitconfig
mkdir $DIR/git
cp ~/.gitconfig $DIR/git/
