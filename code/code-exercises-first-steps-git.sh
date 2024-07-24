# Navigate to the existing 'recipes' directory
cd recipes # <1>

# Add content:
cat > recipes.txt <<- EOM
Pasta

1. Bring water to the boil in a large saucepan.
2. Once the water is boiling, add a good pinch of salt.
3. Add the pasta.
4. Cook the pasta according to packet instructions until it's "al dente".
5. Drain the pasta in a colander.
EOM
# <2>
git add recipes.txt # <3>
git commit -m "Add pasta recipe to recipes.txt" # <4>
# Amend a commit:
echo "6. Enjoy!" >> recipes.txt # <5>
git add recipes.txt # <6>
git commit --amend --no-edit # <7>
# Create a .gitignore file:
wget -O pasta.jpg https://upload.wikimedia.org/wikipedia/commons/8/84/Rigatoni.jpg # <8>
echo "*.jpg" > .gitignore # <9>
git add --all # <10>
git commit -m "Add .gitignore and ignore all files that end with .jpg" # <11>