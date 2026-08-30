#!/bin/bash

REPO_DIR="$HOME/auto_commit"
cd "$REPO_DIR" || exit 1

# Update file log dengan timestamp
echo "$(date '+%Y-%m-%d %H:%M:%S') - auto commit" >> commit_log.txt

# Commit dan push
git add -A
git commit -m "auto commit: $(date '+%Y-%m-%d %H:%M:%S')"
git push origin main
