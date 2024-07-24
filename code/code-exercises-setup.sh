#!/bin/bash

cd recipes # <1>
git config --global user.name "Your Name" # <2>
git config --global user.email "your.email@example.com" # <3>
git config --global init.defaultBranch main # <4>
git config --global core.editor "vim" # <5>
git config --list # <6>