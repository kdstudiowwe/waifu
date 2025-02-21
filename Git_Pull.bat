@echo off
TITLE GitHub Quick-Pull

:: Show current branch
echo Pulling from branch:
git branch
echo.

:: Fetch latest updates
echo Fetching latest updates...
git fetch
if %ERRORLEVEL% NEQ 0 (
    echo Error: Failed to fetch updates. Check your internet connection.
    pause
    exit /b
)

:: Pull latest changes
echo Pulling latest changes...
git pull --rebase
if %ERRORLEVEL% NEQ 0 (
    echo Error: Pull failed. Possible merge conflicts.
    pause
    exit /b
)

echo Pull successful!
pause
