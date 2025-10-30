#!/bin/bash

cd city-guide # <1>
echo "- It is housed in a former water tower at the center of Hamburg Stadtpark." >> city-guide.txt # <2>
git add city-guide.txt # <3>
git commit --amend --no-edit # <4>
git log --oneline # <5>