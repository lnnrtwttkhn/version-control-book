#!/bin/bash

# Navigate to the existing 'recipes' directory
cd recipes # <1>

# Create a new branch called 'feature'
git checkout -b feature # <2>

# Add a new recipe to your recipes.txt file
cat >> recipes.txt <<- EOM

Chocolate Cake

1. Preheat the oven to 350°F (175°C).
2. Mix flour, sugar, cocoa powder, baking powder, and salt in a bowl.
3. Add eggs, milk, oil, and vanilla extract, and mix well.
4. Pour the batter into a greased baking pan.
5. Bake for 30-35 minutes.

EOM

# Stage and commit the changes to recipes.txt on the feature branch
git add recipes.txt # <4>
git commit -m "Add chocolate cake recipe to recipes.txt" 

# Switch back to the default branch (main or master)
git switch main # <5>

# Make conflicting changes in the main branch
cat >> recipes.txt <<- EOM

Vanilla Cake

1. Preheat the oven to 350°F (175°C).
2. Mix flour, sugar, baking powder, and salt in a bowl.
3. Add eggs, milk, oil, and vanilla extract, and mix well.
4. Pour the batter into a greased baking pan. 
5. Bake for 25-30 minutes.

EOM

git add recipes.txt # <7>
git commit -m "Add vanilla cake recipe to recipes.txt" 

# Attempt to merge the feature branch with the default branch to create a conflict
git merge feature || true # <8>

# Resolve the merge conflict
sed -i '' -e '/^<<<<<<< /d' -e '/^=======/d' -e '/^>>>>>>> /d' recipes.txt

# Stage and commit the resolved changes
git add recipes.txt # <10>
git commit -m "Resolve merge conflict by adding both chocolate and vanilla cake recipes" 

# Delete the feature branch
git branch -d feature # <11>
