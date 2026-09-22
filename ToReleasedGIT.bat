@echo off
cd /d "%~dp0"
git config --global user.email "aojha111@users.noreply.github.com" && ^
git config --global user.name "aojha111" && ^
git lfs install --skip-repo && ^
git lfs track "*.exe" && ^
git add .gitattributes *.exe
if errorlevel 1 goto :fail
git commit -m "Add executables with Git LFS"
if errorlevel 1 echo Nothing new to commit; continuing to push.
git push origin main
if errorlevel 1 goto :fail
echo Done: executables pushed to ReleasedApps.
exit /b 0

:fail
echo FAILED: a git step returned an error.
exit /b 1
