#!/bin/bash

cd recipes
# git init is needed to set local Git configuration:
git init
git config user.name "Your Name"
git config user.email "your.email@example.com"
git config init.defaultBranch main
git config core.editor "vim"
git config --list --local