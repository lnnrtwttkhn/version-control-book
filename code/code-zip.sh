#!/bin/bash
mkdir -p zips

# Run the cli script and zip its output
sh code/code-exercises-cli.sh
cp -r recipes-cli recipes-cli
zip -r zips/recipes-cli.zip recipes-cli
rm -rf recipes-cli

# Run the setup script and zip its output
sh code/code-exercises-setup.sh
cp -r recipes-setup recipes-setup
zip -r zips/recipes-setup.zip recipes-setup
rm -rf recipes-setup

# Run the first steps script and zip its output
sh code/code-exercises-first-steps-git.sh
cp -r recipes recipes-first-steps
zip -r zips/recipes-first-steps.zip recipes-first-steps
rm -rf recipes recipes-first-steps

# Run the branches script and zip its output
sh code/code-exercises-branches.sh
cp -r recipes recipes-branches
zip -r zips/recipes-branches.zip recipes-branches
rm -rf recipes recipes-branches
