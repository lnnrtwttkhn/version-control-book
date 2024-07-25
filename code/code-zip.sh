#!/bin/bash

mkdir -p zips

# Run the cli script and zip its output
sh code/code-exercises-cli.sh
zip -r zips/recipes-cli.zip recipes

# Run the setup script and zip its output
sh code/code-exercises-setup-run.sh
zip -r zips/recipes-setup.zip recipes

# Run the first steps script and zip its output
sh code/code-exercises-first-steps-git.sh
zip -r zips/recipes-first-steps.zip recipes

# Run the branches script and zip its output
sh code/code-exercises-branches.sh
zip -r zips/recipes-branches.zip recipes
