#!/bin/bash

# Add your exercise partner as a collaborator to your recipes repository # <1>
cd ~ # <2>
git clone https://github.com/partner-username/partner-repo-name.git  # <3>
git checkout -b new-branch-name # <4>
echo "New Recipe" >> recipes.txt # <5>
git add recipes.txt  # <6>
git commit -m "Add new recipe to recipes.txt" # <6>
git push origin new-branch-name # <7>
# Review the PR your partner made in your repository. # <8>
# Merge the PR into your repository. # <9>