# Navigate to the existing 'recipes' directory
cd recipes # <1>

# Add content and commit changes:
# <2>
cat > recipes.txt <<- EOM
Pasta

1. Bring water to the boil in a large saucepan.
2. Once the water is boiling, add a good pinch of salt.
3. Add the pasta.
4. Cook the pasta according to packet instructions until it's "al dente".
5. Drain the pasta in a colander.
EOM
# <3>
git add recipes.txt # <4>
git commit -m "Add pasta recipe to recipes.txt" # <5>
# Amend a commit:
echo "6. Enjoy!" >> recipes.txt # <6>
git add recipes.txt # <7>
git commit --amend --no-edit # <8>
# Create a .gitignore file:
wget -O pasta.jpg https://upload.wikimedia.org/wikipedia/commons/8/84/Rigatoni.jpg # <9>
echo "*.jpg" > .gitignore # <10>
git add --all # <11>
git commit -m "Add .gitignore and ignore all files that end with .jpg" # <12>