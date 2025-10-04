#!/bin/bash
cd /home/robolechuga/scripts
git add .
git diff-index --quiet HEAD || git commit -m "Sync $(date '+%Y-%m-%d %H:%M')"
git pull --rebase
git push
echo "Scripts Synced to GitHub!"
