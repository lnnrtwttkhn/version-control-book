#!/bin/bash
mkdir zips

# First steps
sh code/code-exercises-first-steps-git.sh
cp -r recipes recipes-first-steps
zip -r zips/version-control-book-first-steps-git.zip recipes-first-steps

# branches
sh code/code-exercises-branches.sh
cp -r recipes recipes-branches
zip -r zips/version-control-book-branches.zip recipes-branches

# delete the recipe directories
rm -rf recipes*
