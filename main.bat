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

: Change to main, pull latest, do not open the default editor
git checkout main && git pull origin main --no-edit && git pull origin --no-edit && git pull --no-edit && git fetch

: If a branch name was passed in
IF NOT %branch%=="" (
    : Switch to the desired branch and pull latest, do not open the default editor
    git checkout %branch% && git pull origin %branch% --no-edit
)

git branch

@echo on
