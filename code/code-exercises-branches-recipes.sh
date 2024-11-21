#!/bin/bash

cd recipes # <1>
git branch feature # <2>
git switch feature # <3>
cat >> recipes.txt <<- EOM # <4>

Potatoes

1. Wash the potatoes and cut them into evenly sized chunks.
2. Bring water to the boil in a large saucepan.
3. Once the water is boiling, add a good pinch of salt.
3. Add the potatoes.
4. Cook the potatoes for 15 - 20 minutes or until fork-tender.
5. Drain the pasta in a colander.
EOM
git add recipes.txt # <5>
git commit -m "Add potatoes recipe to recipes.txt" # <5>
cat recipes.txt # <6>
git checkout main # <7>
cat recipes.txt # <8>
git merge feature # <9>
git branch -d feature # <10> 
cat recipes.txt # <11>