: Use: main my-branch-name

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
git checkout main && git pull origin main && git pull origin && git pull && git fetch

: If a branch name was passed in
IF NOT %branch%=="" (
    : Store the argument in a variable named "branch"
    git checkout %branch% && git pull origin %branch%
)

git branch

@echo on
