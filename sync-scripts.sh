#!/bin/bash
cd ~/scripts
git add .
git diff-index --quiet HEAD || git commit -m "Scripts Updated: $(date '+%Y-%m-%d %H:%M')"
git pull --rebase
git push
echo "Scripts Synced to GitHub!"
