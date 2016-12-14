#!/bin/bash

# Exit with nonzero exit code if anything fails
set -e

# check current branch
if [ 'master' != $TRAVIS_BRANCH ]; then
    echo "Deploy only on master branch. Current branch: '$branch'.";
    exit 0;
fi

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

echo -e "\033[0;32mGo To Public folder...\033[0m"
mkdir -p public
pushd public

echo -e "\033[0;32mUpdating static site content...\033[0m"
git clone git@github.com:JavaBy/JavaBy.github.io.git .

echo -e "\033[0;32mReturning...\033[0m"
popd

echo -e "\033[0;32mBuild the project...\033[0m"
hugo -t blackburn

echo -e "\033[0;32mGo To Public folder...\033[0m"
pushd public

echo -e "\033[0;32mAdd changes to index...\033[0m"
git add .

echo -e "\033[0;32mCommiting changes...\033[0m"
git commit -m "rebuilding site `date`"

echo -e "\033[0;32mPush source and build repos...\033[0m"
git push origin master

echo -e "\033[0;32mReturning...\033[0m"
popd
