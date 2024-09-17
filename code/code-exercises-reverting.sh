#!/bin/bash

cd recipes # <1>
git branch feature/revert-exercise # <2>
git switch feature/revert-exercise # <3>
echo "This is delicious!" >> recipes.txt # <4>
git add recipes.txt # <5>
git commit -m "Add text" # <6>
last_commit_hash=$(git log -1 --format="%H") # <7> 
git revert --no-edit $last_commit_hash # <8> 