: Use: master my-branch-name

@echo off

: If an argument is passed in
IF NOT "%1"=="" (
    : Store the argument in a variable named "branch"
    SET branch=%1
) ELSE (
    : Else, clear the variable
    SET branch=""
)

: Change to master, pull latest
git checkout master && git pull origin master && git pull origin && git pull && git fetch

: If a branch name was passed in
IF NOT %branch%=="" (
    : Switch to the desired branch and pull latest
    git checkout %branch% && git pull origin %branch%
)

git branch

@echo on
