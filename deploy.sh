#!/bin/bash

# Exit with nonzero exit code if anything fails
set -e

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

echo -e "\033[0;32mGo To Public folder...\033[0m"
cd public

echo -e "\033[0;32mUpdating static site content...\033[0m"
git pull origin master

echo -e "\033[0;32mReturning...\033[0m"
cd ..

echo -e "\033[0;32mBuild the project...\033[0m"
hugo -t blackburn

echo -e "\033[0;32mGo To Public folder...\033[0m"
cd public

echo -e "\033[0;32mAdd changes to index...\033[0m"
git add .

echo -e "\033[0;32mCommiting changes...\033[0m"
git commit -m "rebuilding site `date`"

echo -e "\033[0;32mCreating new branch...\033[0m"
git branch work

echo -e "\033[0;32mChecking out master...\033[0m"
git checkout master

echo -e "\033[0;32mMerging new changes...\033[0m"
git merge work

echo -e "\033[0;32mRemoving branch...\033[0m"
git branch -d work

echo -e "\033[0;32mPush source and build repos...\033[0m"
git push origin master

echo -e "\033[0;32mReturning...\033[0m"
cd ..