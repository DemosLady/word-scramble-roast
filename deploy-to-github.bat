@echo off
chcp 65001 >nul
echo ========================================
echo  Word Scramble Roast - GitHub Deploy
echo ========================================
echo.

cd /d "%~dp0"

echo [1/5] Initializing git...
git init
git branch -m main

echo.
echo [2/5] Adding all files...
git add -A

echo.
echo [3/5] Committing...
git commit -m "Word Scramble x Roast Edition - initial release"

echo.
echo [4/5] Setting remote...
git remote remove origin 2>nul
git remote add origin https://github.com/DemosLady/word-scramble-roast.git

echo.
echo [5/5] Pushing to GitHub...
git push -u origin main

echo.
echo ========================================
echo  DONE! Now enable GitHub Pages:
echo  Settings - Pages - Branch: main - Save
echo  URL: https://demoslady.github.io/word-scramble-roast/
echo ========================================
pause
