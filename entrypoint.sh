#!/bin/sh

python Scripts/main.py

git add .
git commit -m 'Update Doc folder from container'
git push "https://x-access-token:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git" HEAD:master