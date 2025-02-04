#!/bin/bash

cd recipes # <1>
git branch feature/stash-exercise # <2>
git switch feature/stash-exercise # <3>
echo "This is yummy!" >> recipes.txt # <4>
git stash # <5>
git status # <6>
git stash apply # <7>
tail -1 recipes.txt # <8>