
echo "Deleting old publication"
rd /s /q public
mkdir public
git worktree public
rd /s /q .git/worktrees/public

echo "Checking out gh-pages branch into public"
git worktree add -B gh-pages public upstream/gh-pages

echo "Removing existing files"
rd /s /q public/*

echo "Generating site"
hugo

echo "Updating gh-pages branch"
cd public && git add --all && git commit -m "Publishing to gh-pages (publish.sh)" && git push origin gh-pages