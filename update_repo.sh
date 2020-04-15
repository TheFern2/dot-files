#!/usr/bin/sh

# Script to update dot files in this repo
# This can be added to a daily chron job to update repo and push

# configs
cp ~/.config/nvim/init.vim ./config/nvim
cp ~/.gitignore ./config

# bash
cp ~/.bashrc ./bash
cp ~/.bash_aliases ./bash

# fish
cp -R ~/.config/fish ./config
