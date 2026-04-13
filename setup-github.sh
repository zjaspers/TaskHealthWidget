#!/bin/bash

echo "🚀 WorkJam Widget Library - GitHub Setup Script"
echo "================================================"
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install git first."
    exit 1
fi

echo "📝 Step 1: Initialize Git Repository"
git init
echo "✅ Git repository initialized"
echo ""

echo "📝 Step 2: Add all files to git"
git add .
echo "✅ Files staged"
echo ""

echo "📝 Step 3: Create initial commit"
git commit -m "Initial commit: WorkJam Widget Library v1.0

- Employee Dashboard Widget
- Task Score Widget
- Cal AI design system
- Full documentation"
echo "✅ Initial commit created"
echo ""

echo "📝 Step 4: Set up GitHub remote"
echo "Please enter your GitHub repository URL (e.g., https://github.com/username/workjam-widgets.git):"
read REPO_URL

if [ -z "$REPO_URL" ]; then
    echo "⚠️  No URL provided. Skipping remote setup."
else
    git remote add origin "$REPO_URL"
    echo "✅ Remote origin added: $REPO_URL"
fi
echo ""

echo "📝 Step 5: Create main branch"
git branch -M main
echo "✅ Main branch created"
echo ""

echo "🎉 Setup complete!"
echo ""
echo "Next steps:"
echo "1. Create a new repository on GitHub: https://github.com/new"
echo "2. If you haven't set the remote URL, run:"
echo "   git remote add origin YOUR_REPO_URL"
echo "3. Push to GitHub:"
echo "   git push -u origin main"
echo ""
echo "4. Enable GitHub Pages:"
echo "   - Go to your repo Settings → Pages"
echo "   - Select 'main' branch as source"
echo "   - Your widgets will be live at: https://USERNAME.github.io/REPO_NAME/"
echo ""
echo "📚 View README.md for full documentation"
