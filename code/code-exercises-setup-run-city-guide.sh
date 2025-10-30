#!/bin/bash

# git init is needed to set local Git configuration:
git config --global init.defaultBranch main
git init city-guide
cd city-guide
git config user.name "Your Name"
git config user.email "your.email@example.com"
git config init.defaultBranch main
git config core.editor "vim"
git config --list --local