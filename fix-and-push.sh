#!/bin/bash
# Remove stale git locks, commit portfolio additions, and push
# Run: bash fix-and-push.sh

cd "$(dirname "$0")"

echo "Removing stale git lock files..."
rm -f .git/index.lock .git/refs/heads/main.lock .git/HEAD.lock

echo "Staging and committing new app cards (Iron Aegis + Lemmings)..."
git add index.html
git commit -m "Add Iron Aegis and Lemmings app cards"

echo ""
echo "Pushing to GitHub..."
git push origin main

echo ""
echo "Done! Your portfolio site should now be updated at https://jbaker00.github.io"
