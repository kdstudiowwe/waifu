@echo off
TITLE GitHub Quick-Push

:: Show current branch
echo Pushing to branch: 
git branch
echo.

:: Pull latest changes to prevent conflicts
echo Pulling latest changes...
git pull --rebase
if %ERRORLEVEL% NEQ 0 (
    echo Error: Pull failed. Please fix conflicts first.
    pause
    exit /b
)

:: Take input for commit message
set /p commit_title="Enter Commit title (pushes with you as author): "

:: Add all changes
git add --all

:: Commit changes
git commit -m "%commit_title%"
if %ERRORLEVEL% NEQ 0 (
    echo No changes to commit or commit failed.
    pause
    exit /b
)

:: Push to GitHub
echo Pushing to GitHub...
git push
if %ERRORLEVEL% NEQ 0 (
    echo Error: Push failed. Please check your internet connection or authentication.
    pause
    exit /b
)

echo Push successful!
pause
