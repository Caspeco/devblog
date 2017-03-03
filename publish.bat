
git status -s | find /i "M"
if %ERRORLEVEL% == 0 goto error
git status -s | find /i "D"
if %ERRORLEVEL% == 0 goto error
git status -s | find /i "A"
if %ERRORLEVEL% == 0 goto error

echo "Deleting old publication"
rd /s /q public
mkdir public
git worktree prune
rd /s /q ".git/worktrees/public"

echo "Checking out gh-pages branch into public"
git worktree add -B gh-pages public origin/gh-pages

echo "Removing existing files"
rd /s /q public

echo "Generating site"
hugo

echo "Updating gh-pages branch"
@echo devs.caspeco.se > public/CNAME
cd public && git add --all && git commit -m "Publishing to gh-pages (publish.sh)" && git push origin gh-pages
goto done

:error
echo "Please commit working changes first"
goto done
:done