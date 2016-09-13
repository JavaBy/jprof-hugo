#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
hugo -t blackburn

# Go To Public folder
cd public

# Commit changes.
git add .
git commit -m "rebuilding site `date`"
git branch work
git checkout master
git merge work

# Push source and build repos.
git push origin master

# Come Back
cd ..