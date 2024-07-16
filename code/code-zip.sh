#!/bin/bash
mkdir zips
sh code/code-exercises-first-steps.sh
zip -r zips/firststeps.zip recipes
rm -rf recipes