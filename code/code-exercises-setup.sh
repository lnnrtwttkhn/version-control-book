#!/bin/bash

# Navigate into the recipes folder
cd recipes # <1>

# Initialize a new Git repository
git init # <2>

# Set your Git username
git config user.name "Your Name" # <3>

# Set your Git email address
git config user.email "your.email@example.com" # <4>

# Change the default name of the initial branch to `main`
git config init.defaultBranch main # <5>

# List the Git configuration
git config --list --local # <6>

# Optional: Change your default text editor (uncomment the line that corresponds to your preferred editor) # <6>

# Change to nano
# git config --global core.editor "nano"

# Change to vim
# git config --global core.editor "vim"

# Change to VS Code
# git config --global core.editor "code --wait"

# Change to Sublime Text
# git config --global core.editor "subl --wait"

# Change to Atom
# git config --global core.editor "atom --wait"
