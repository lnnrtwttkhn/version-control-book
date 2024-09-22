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