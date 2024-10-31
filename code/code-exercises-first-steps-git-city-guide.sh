#!/bin/bash

cd city-guide # <1>
git init # <2>
touch city-guide.txt # <3>
cat > city-guide.txt <<- EOM # <4>
Hamburg Planetarium

- It is one of the world's oldest, and one of Europe's most visited planetariums.
- It is located in the district of Winterhude, Hamburg, Germany.
- It is housed in a former water tower at the center of Hamburg Stadtpark. 
EOM
git add city-guide.txt # <5>
git commit -m "Add Hamburg Planetarium to city-guide.txt" # <6>