#!/bin/bash

# create an empty remote repository # <1>
cd my-project # <2>
git remote add origin https://github.com/your-username/your-repo-name.git # <3>
git push -u origin main # <4>