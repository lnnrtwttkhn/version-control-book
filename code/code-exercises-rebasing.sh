#!/bin/bash

cd recipes # <1>
git branch feature/rebase-exercise # <2>
git switch feature/rebase-exercise # <3>
echo "New feature content" >> feature.txt # <4>
git add feature.txt # <5>
git commit -m "Added feature content" # <6>
git switch main # <7>
echo "Main branch content" >> main.txt # <8>
git add main.txt # <9>
git commit -m "Updated main content" # <10>
git switch feature/rebase-exercise # <11>
git rebase main  # <12>
git switch main # <13>
git log # <14>
