@echo off
cd /d "%~dp0"

echo Initializing git repository...
git init
git add .
git commit -m "Initial personal website for Ziliang Xiong"
git branch -M main

echo.
echo Checking GitHub repository...
gh repo view XZLeo/XZLeo.github.io >nul 2>&1
if %errorlevel% neq 0 (
    echo Creating XZLeo.github.io repository...
    gh repo create XZLeo.github.io --public --source=. --remote=origin --push
) else (
    git remote remove origin 2>nul
    git remote add origin https://github.com/XZLeo/XZLeo.github.io.git
    git push -u origin main
)

echo.
echo Done. Visit https://xzleo.github.io after GitHub Pages is enabled.
pause
