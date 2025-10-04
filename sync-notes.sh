#!/bin/bash
cd /mnt/c/Users/$USER/Documents/notes
git add .
git diff-index --quiet HEAD || git commit -m "Sync $(date '+%Y-%m-%d %H:%M')"
git pull --rebase
git push
echo "Notes Synced to GitHub!"
