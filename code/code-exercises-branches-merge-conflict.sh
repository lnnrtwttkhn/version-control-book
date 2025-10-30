#!/bin/bash

cd recipes # <1>
git branch feature # <2>
git switch feature # <3>
cat >> recipes.txt <<- EOM # <4>

Chocolate Cake

1. Preheat the oven to 350°F (175°C).
2. Mix flour, sugar, cocoa powder, baking powder, and salt in a bowl.
3. Add eggs, milk, oil, and vanilla extract, and mix well.
4. Pour the batter into a greased baking pan.
5. Bake for 30-35 minutes.

EOM
git add recipes.txt # <5>
git commit -m "Add chocolate cake recipe to recipes.txt" # <5>
git checkout main # <6>
cat >> recipes.txt <<- EOM # <7>

Vanilla Cake

1. Preheat the oven to 350°F (175°C).
2. Mix flour, sugar, baking powder, and salt in a bowl.
3. Add eggs, milk, oil, and vanilla extract, and mix well.
4. Pour the batter into a greased baking pan. 
5. Bake for 25-30 minutes.

EOM

git add recipes.txt # <8>
git commit -m "Add vanilla cake recipe to recipes.txt" # <8>
git merge feature # <9>
sed -i '' -e '/^<<<<<<< /d' -e '/^=======/d' -e '/^>>>>>>> /d' recipes.txt # <10>
git add recipes.txt # <11>
git commit -m "Resolve merge conflict by adding both chocolate and vanilla cake recipes" # <12> 
git branch -d feature # <13> 