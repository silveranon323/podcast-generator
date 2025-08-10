#!/bin/bash
set -e  # Stop on any error

echo "============"

# Set Git user details (with fallback if no email provided)
EMAIL="${INPUT_EMAIL:-${GITHUB_ACTOR}@localhost}"
git config --global user.name "${INPUT_NAME:-${GITHUB_ACTOR}}"
git config --global user.email "$EMAIL"

# Allow GitHub Actions workspace to be safe
git config --global --add safe.directory /github/workspace

# Run your Python feed generator
python3 /usr/bin/feed.py

# Commit and push changes
git add -A
git commit -m "Update Feed" || echo "No changes to commit"
git push origin HEAD

echo "============"
