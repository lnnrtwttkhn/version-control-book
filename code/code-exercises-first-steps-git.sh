#!/bin/bash

cd recipes # <1>
git init # <2>
touch recipes.txt # <3>
cat > recipes.txt <<- EOM # <4>
Pasta

1. Bring water to the boil in a large saucepan.
2. Once the water is boiling, add a good pinch of salt.
3. Add the pasta.
4. Cook the pasta according to packet instructions until it's "al dente".
5. Drain the pasta in a colander.
EOM
git add recipes.txt # <5>
git commit -m "Add pasta recipe to recipes.txt" # <6>
echo "6. Enjoy!" >> recipes.txt # <7>
git add recipes.txt # <8>
git commit --amend --no-edit # <9>
wget -O pasta.jpg https://upload.wikimedia.org/wikipedia/commons/8/84/Rigatoni.jpg # <10>
git status # <11>
touch .gitignore # <12>
echo "*.jpg" > .gitignore # <13>
git status # <14>
git add --all # <15>
git commit -m "Add .gitignore and ignore all files that end with .jpg" # <16>