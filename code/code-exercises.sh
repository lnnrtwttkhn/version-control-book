#!/bin/bash

mkdir -p exercises-repos

# Run the cli script and zip its output
sh code/code-exercises-cli.sh
zip -r exercises-repos/recipes-cli.zip recipes

# Run the setup script and zip its output
sh code/code-exercises-setup-run.sh
zip -r exercises-repos/recipes-setup.zip recipes

# Run the first steps script and zip its output
sh code/code-exercises-first-steps-git.sh
zip -r exercises-repos/recipes-first-steps.zip recipes

# Run the branches script and zip its output
sh code/code-exercises-branches.sh
zip -r exercises-repos/recipes-branches.zip recipes
