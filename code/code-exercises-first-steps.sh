# Initialize a Git repository:
mkdir recipes # <1>
cd recipes # <2>
git init # <3>
# Add content and commit changes:
touch recipes.txt # <4>
cat > recipes.txt <<- EOM
Pasta

1. Bring water to the boil in a large saucepan.
2. Once the water is boiling, add a good pinch of salt.
3. Add the pasta.
4. Cook the pasta according to packet instructions until it's "al dente".
5. Drain the pasta in a colander.
EOM
# <5>
git add recipes.txt # <6>
git commit -m "Add pasta recipe to recipes.txt" # <7>
# Amend a commit:
echo "6. Enjoy!" >> recipes.txt # <8>
git add recipes.txt # <9>
git commit --amend --no-edit # <10>
# Create a .gitignore file:
wget -O pasta.jpg https://upload.wikimedia.org/wikipedia/commons/8/84/Rigatoni.jpg # <11>
echo "*.jpg" > .gitignore # <12>
git add --all # <13>
git commit -m "Add .gitignore and ignore all files that end with .jpg" # <14>