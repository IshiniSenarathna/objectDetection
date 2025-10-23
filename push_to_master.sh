#!/bin/bash
# Run from repo root: c:\Users\HP\objectDetection (Git Bash / WSL recommended)

# 1) Stop tracking dataset, classifier and notebook checkpoints (keeps local files)
git rm -r --cached objectDetection/dataset || true
git rm --cached objectDetection/classifier.yml classifier.yml || true
git rm -r --cached .ipynb_checkpoints || true

# 2) Stage files you want to commit
git add .gitignore
git add capture_faces.ipynb objectDetection.ipynb
git add push_to_master.sh

# 3) Commit
git commit -m "Stop tracking dataset and classifier.yml; update .gitignore and notebooks" || true

# 4) Push local 'main' to remote 'master'
git push -u origin main:master

# 5) If push fails due to non-fast-forward, fetch and rebase then push
# git fetch origin
# git pull --rebase origin master || git pull origin master
# git push -u origin main:master
