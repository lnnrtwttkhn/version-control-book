#!/bin/bash

cd recipes # <1>
wget -nv -O pasta.jpg https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Rigatoni.jpg/320px-Rigatoni.jpg # <2>
git status # <3>
touch .gitignore # <4>
echo "*.jpg" > .gitignore # <5>
git status # <6>
git add --all # <7>
git commit -m "Add .gitignore and ignore all files that end with .jpg" # <8>
echo ".DS_Store" >> .gitignore # <9>
git add .gitignore # <9>
git commit -m "Ignore .DS_Store" # <9>