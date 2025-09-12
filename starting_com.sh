#!/bin/bash

# Make sure you already cloned your repo before running this script
# Example: git clone https://github.com/your-username/practice-commits.git

cd practice-commits || exit

# --- Step 1: Add .gitignore ---
cat > .gitignore <<EOL
# OS generated files
.DS_Store
Thumbs.db

# Logs
*.log

# Python cache
__pycache__/
*.pyc

# Node.js
node_modules/

# Build files
dist/
build/

# Environment variables
.env

# Backup files
*.bak
*.swp
EOL

git add .gitignore
git commit -m "Add .gitignore file"

# --- Step 2: Add LICENSE (MIT) ---
cat > LICENSE <<EOL
MIT License

Copyright (c) 2025 Your Name

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
EOL

git add LICENSE
git commit -m "Add MIT License"

# --- Step 3: Generate 21 Commits ---
touch commits.txt

for i in {1..21}
do
    echo "Commit $i at $(date)" >> commits.txt
    git add commits.txt
    git commit -m "Auto Commit $i"
done

# Push all commits to GitHub
git push origin main
