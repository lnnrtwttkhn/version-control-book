#!/bin/bash

cd city-guide # <1>
git branch feature # <2>
git switch feature # <3>
cat >> city-guide.txt <<- EOM # <4>

Paddle tour of the Alster canals

- If you're not afraid of the water and would like to enjoy a really super day whilst at the same time doing a bit of upper body exercise, then why not pick up a paddle and work your way down the Alster canals in a canoe.
- Just go to any one of the countless boat and canoe hire points on the Alster to begin your adventure.

taken from https://www.hamburg-travel.com/see-explore/sports-recreation/sports-physical-activity/paddle-tour-of-the-alster-canals/
EOM
git add city-guide.txt # <5>
git commit -m "Add paddle tour of the Alster canals to city-guide.txt" # <5>
cat city-guide.txt # <6>
git checkout main # <7>
cat city-guide.txt # <8>
git merge feature # <9>
git branch -d feature # <10> 
cat city-guide.txt # <11>