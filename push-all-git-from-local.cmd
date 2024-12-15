@echo off
:: Push-All-Git-From-Local Script
:: Author: wisitlongsida1999
:: Description: This script loops through all subdirectories in a main folder,
::              identifies Git repositories, adds all changes, commits them, 
::              and pushes to the current branch.

:: Define the main folder path
set "MAIN_FOLDER=."

:: Change to the main folder
cd /d "%MAIN_FOLDER%"

:: Loop through each subfolder in the main folder
for /d %%F in (*) do (
    :: Change to the subfolder
    cd "%%F"

    :: Check if the folder is a Git repository
    if exist ".git" (
        echo Processing folder: %%F
        
        :: Add all changes
        git add .

        :: Commit changes
        git commit -m "justCommit"

        :: Get the current branch name
        for /f "delims=" %%B in ('git rev-parse --abbrev-ref HEAD') do set "BRANCH_NAME=%%B"

        :: Push to the current branch
        git push origin %BRANCH_NAME%
    ) else (
        echo %%F is not a Git repository. Skipping.
    )

    :: Go back to the main folder
    cd "%MAIN_FOLDER%"
)

echo Done!
pause
