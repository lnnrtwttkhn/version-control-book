#!/bin/bash

# Step 1: Identify a folder on your computer where you (want to) keep course-related files.
# Tip: A good location might be within your "Documents" folder or a dedicated "Projects" or "Courses" folder. # 

# Step 2: Navigate into the chosen location
# Change the following path to your chosen directory
# cd /path/to/your/chosen/directory # <1> 

# Step 3: Use the command line to display the path of your chosen directory
pwd # <2> 

# Step 1: Within your chosen folder, create a new subfolder and name it `recipes`
mkdir recipes # <3> 

# Step 2: Navigate into the `recipes` folder
cd recipes # <4> 

# Step 3: Create a new file and name it `recipes.txt`
touch recipes.txt # <5> 

# Step 4: Confirm the creation of the file by listing the contents of the `recipes` folder
ls # <6> 
