#!/bin/bash

rm -rf exercises-repos
rm -rf recipes
rm -rf city-guide
mkdir -p exercises-repos

# Run the cli script and zip its output
sh -x code/code-exercises-cli-recipes.sh > "exercises-repos/history-cli-recipes.txt" 2>&1
zip -r exercises-repos/recipes-cli.zip recipes
sh -x code/code-exercises-cli-city-guide.sh > "exercises-repos/history-cli-city-guide.txt" 2>&1
zip -r exercises-repos/city-guide-cli.zip city-guide

# Run the setup script and zip its output
sh -x code/code-exercises-setup-run-recipes.sh > "exercises-repos/history-setup-recipes.txt" 2>&1
zip -r exercises-repos/recipes-setup.zip recipes
sh -x code/code-exercises-setup-run-city-guide.sh > "exercises-repos/history-setup-city-guide.txt" 2>&1
zip -r exercises-repos/city-guide-setup.zip city-guide

# Run the first steps script and zip its output
sh -x code/code-exercises-first-steps-git-recipes.sh > "exercises-repos/history-first-steps-git-recipes.txt" 2>&1
zip -r exercises-repos/recipes-first-steps.zip recipes
sh -x code/code-exercises-first-steps-git-city-guide.sh > "exercises-repos/history-first-steps-git-city-guide.txt" 2>&1
zip -r exercises-repos/city-guide-first-steps.zip city-guide

# Run the amend script and zip its output
sh -x code/code-exercises-essentials-amend-recipes.sh > "exercises-repos/history-essentials-amend-recipes.txt" 2>&1
zip -r exercises-repos/recipes-essentials-amend-recipes.zip recipes
sh -x code/code-exercises-essentials-amend-city-guide.sh > "exercises-repos/history-essentials-amend-city-guide.txt" 2>&1
zip -r exercises-repos/city-guide-essentials-amend.zip city-guide

# Run the gitignore script and zip its output
sh -x code/code-exercises-essentials-gitignore-recipes.sh > "exercises-repos/history-essentials-gitignore-recipes.txt" 2>&1
zip -r exercises-repos/recipes-essentials-gitignore.zip recipes
sh -x code/code-exercises-essentials-gitignore-city-guide.sh > "exercises-repos/history-essentials-gitignore-city-guide.txt" 2>&1
zip -r exercises-repos/city-guide-essentials-gitignore.zip city-guide

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