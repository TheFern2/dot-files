#!/usr/bin/sh

# Script to update dot files in this repo
# This can be added to a daily chron job to update repo and push

# configs
cp -R ~/.config/nvim ./config

# bash
cp ~/.bashrc ./bash
cp ~/.bash_aliases ./bash