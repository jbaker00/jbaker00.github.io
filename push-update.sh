#!/bin/bash
# Run this script to commit and push the website update
cd "$(dirname "$0")"
rm -f .git/index.lock 2>/dev/null
git add index.html
git commit -m "Fix FirebaseViewer GitHub link to AdMobFirebaseViewer repo"
git push origin main
