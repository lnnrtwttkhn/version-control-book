#!/bin/bash
mkdir -p zips

# Run the first script and zip its output
sh code/code-exercises-first-steps-git.sh
cp -r recipes recipes-first-steps
zip -r zips/recipes-first-steps.zip recipes-first-steps
rm -rf recipes recipes-first-steps

# Run the second script and zip its output
sh code/code-exercises-branches.sh
cp -r recipes recipes-branches
zip -r zips/recipes-branches.zip recipes-branches
rm -rf recipes recipes-branches
