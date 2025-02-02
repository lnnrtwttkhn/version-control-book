#!/bin/bash

cd recipes # <1>
echo "6. Enjoy!" >> recipes.txt # <2>
git add recipes.txt # <3>
git commit --amend --no-edit # <4>
git log --oneline # <5>