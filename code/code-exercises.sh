#!/bin/bash

mkdir -p exercises-repos

# Run the cli script and zip its output
sh -x code/code-exercises-cli.sh > "exercises-repos/history-cli.txt" 2>&1
zip -r exercises-repos/recipes-cli.zip recipes

# Run the setup script and zip its output
sh -x code/code-exercises-setup-run.sh > "exercises-repos/history-setup.txt" 2>&1
zip -r exercises-repos/recipes-setup.zip recipes

# Run the first steps script and zip its output
sh -x code/code-exercises-first-steps-git.sh > "exercises-repos/history-first-steps-git.txt" 2>&1
zip -r exercises-repos/recipes-first-steps.zip recipes

# Run the amend script and zip its output
sh -x code/code-exercises-essentials-amend.sh > "exercises-repos/history-essentials-amend.txt" 2>&1
zip -r exercises-repos/recipes-essentials-amend.zip recipes

# Run the gitignore script and zip its output
sh -x code/code-exercises-essentials-gitignore.sh > "exercises-repos/history-essentials-gitignore.txt" 2>&1
zip -r exercises-repos/recipes-essentials-gitignore.zip recipes

# Run the branches script and zip its output
sh -x code/code-exercises-branches.sh > "exercises-repos/history-branches.txt" 2>&1
zip -r exercises-repos/recipes-branches.zip recipes

# Run the branches merge conflict script and zip its output
sh -x code/code-exercises-branches-merge-conflict.sh > "exercises-repos/history-branches-merge-conflict.txt" 2>&1
zip -r exercises-repos/recipes-branches-merge-conflict.zip recipes

# Run the stashing script and zip its output
sh -x code/code-exercises-stashing.sh > "exercises-repos/history-stashing.txt" 2>&1
zip -r exercises-repos/recipes-stashing.zip recipes

# Run the reverting script and zip its output
sh -x code/code-exercises-reverting.sh > "exercises-repos/history-reverting.txt" 2>&1
zip -r exercises-repos/recipes-reverting.zip recipes

# Run the rebasing script and zip its output
sh -x code/code-exercises-rebasing.sh > "exercises-repos/history-rebasing.txt" 2>&1
zip -r exercises-repos/recipes-rebasing.zip recipes