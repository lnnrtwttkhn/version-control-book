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

# Run the branches script and zip its output
sh -x code/code-exercises-branches.sh > "exercises-repos/history-branches.txt" 2>&1
zip -r exercises-repos/recipes-branches.zip recipes

# Run the branches merge conflict script and zip its output
sh -x code/code-exercises-branches-merge-conflict.sh > "exercises-repos/history-branches-merge-conflict.txt" 2>&1
zip -r exercises-repos/recipes-branches-merge-conflict.zip recipes