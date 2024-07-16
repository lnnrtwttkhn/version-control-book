#!/bin/bash
mkdir zips
sh code/code-exercises-first-steps-git.sh
zip -r zips/version-control-book-first-steps-git.zip recipes
rm -rf recipes