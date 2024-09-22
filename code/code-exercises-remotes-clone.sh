#!/bin/bash

cd /new/location/for/repo # <1>
git clone https://github.com/your-username/your-repo-name.git /new/location/for/repo # <2>
git checkout -b new-branch # <3>
echo "New Recipe" >> recipes.txt # <3>
git add recipes.txt  # <3>
git commit -m "Add new recipe to recipes.txt" # <3>
git push -u origin new-branch # <4>
cd /original/location/for/repo # <5>
git fetch # <5>
git switch new-branch # <5>
rm -rf /new/location/for/repo # <6>