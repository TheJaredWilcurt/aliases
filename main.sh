#!/bin/bash

# Use: main my-branch-name

# If an argument is passed in
if [ ! -z "$1" ]
then
    # Store the argument in a variable named "branch"
    branch=$1
else
    # Else, clear the variable
    branch=""
fi

# Change to main, pull latest
git checkout main && git pull origin main && git pull origin && git pull && git fetch

# If a branch name was passed in
if [ ! -z "$branch" ]
then
    # Switch to the desired branch and pull latest
    git checkout $branch && git pull origin $branch
fi

git branch
