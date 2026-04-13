# Quick Start Guide: Publishing to GitHub

## 📦 What You Have

Your widget library is ready to publish with:

```
workjam-widgets/
├── index.html                  # Landing page with widget demos
├── employee-dashboard.html     # Employee Dashboard Widget
├── task-score-widget.html      # Task Score Widget
├── README.md                   # Full documentation
├── LICENSE                     # MIT License
├── .gitignore                  # Git ignore file
└── setup-github.sh            # Automated setup script
```

## 🚀 Method 1: Automated Setup (Recommended)

1. **Run the setup script:**
   ```bash
   ./setup-github.sh
   ```

2. **Follow the prompts** - it will:
   - Initialize git repository
   - Create initial commit
   - Set up remote origin
   - Create main branch

3. **Push to GitHub:**
   ```bash
   git push -u origin main
   ```

## 🔧 Method 2: Manual Setup

### Step 1: Create GitHub Repository

1. Go to https://github.com/new
2. Repository name: `workjam-widgets` (or your choice)
3. Description: "Embeddable HTML widgets for WorkJam"
4. Keep it **Public**
5. **Don't** initialize with README (you already have one)
6. Click "Create repository"

### Step 2: Initialize Local Repository

```bash
# Navigate to your widget directory
cd /path/to/your/widgets

# Initialize git
git init

# Add all files
git add .

# Create initial commit
git commit -m "Initial commit: WorkJam Widget Library v1.0"

# Rename branch to main
git branch -M main

# Add remote origin (replace with your URL)
git remote add origin https://github.com/YOUR_USERNAME/workjam-widgets.git

# Push to GitHub
git push -u origin main
```

### Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** tab
3. Scroll to **Pages** section (left sidebar)
4. Under "Source", select:
   - Branch: `main`
   - Folder: `/ (root)`
5. Click **Save**
6. Wait 1-2 minutes for deployment

Your widgets will be live at:
```
https://YOUR_USERNAME.github.io/workjam-widgets/
```

## 🌐 Accessing Your Widgets

Once published:

- **Landing Page:** `https://YOUR_USERNAME.github.io/workjam-widgets/`
- **Employee Dashboard:** `https://YOUR_USERNAME.github.io/workjam-widgets/employee-dashboard.html`
- **Task Score Widget:** `https://YOUR_USERNAME.github.io/workjam-widgets/task-score-widget.html`

## 📝 Making Updates

After making changes to your widgets:

```bash
# Stage changes
git add .

# Commit changes
git commit -m "Update: description of changes"

# Push to GitHub
git push
```

GitHub Pages will automatically rebuild (takes 1-2 minutes).

## 🎨 Customization Tips

### Update Repository Info in README.md

Replace these placeholders:
- `yourusername` → Your GitHub username
- Update demo links with your actual GitHub Pages URL

### Add Screenshots

Create a `screenshots/` folder and add images:
```bash
mkdir screenshots
# Add your widget screenshots
git add screenshots/
git commit -m "Add screenshots"
git push
```

Then update README.md to include them:
```markdown
![Employee Dashboard](screenshots/employee-dashboard.png)
```

## 🔗 Embedding in WorkJam

### Option 1: Direct HTML Copy

1. Open the widget HTML file
2. Copy entire contents
3. In WorkJam Admin → Create HTML Widget
4. Paste the HTML
5. Publish

### Option 2: IFrame Embed

```html
<iframe 
    src="https://YOUR_USERNAME.github.io/workjam-widgets/task-score-widget.html"
    width="100%" 
    height="600px" 
    frameborder="0">
</iframe>
```

### Option 3: API Integration

Use the provided JavaScript functions to connect to WorkJam's API:

```javascript
// In task-score-widget.html
function fetchWorkJamScores() {
    fetch('https://api.workjam.com/your-endpoint')
        .then(response => response.json())
        .then(data => {
            updateScores(data.taskHealth, data.storeScore, data.metrics);
        });
}
```

## 🐛 Troubleshooting

**GitHub Pages not loading?**
- Wait 2-3 minutes after enabling
- Check Settings → Pages for deployment status
- Ensure repository is Public
- Check browser console for errors

**Widgets look broken?**
- Ensure all CSS is inline (it is by default)
- Check relative paths in HTML
- Test locally first by opening HTML files in browser

**Can't push to GitHub?**
- Check you have write access to the repository
- Verify remote URL: `git remote -v`
- May need to authenticate with GitHub CLI or SSH keys

## 📚 Next Steps

1. **Add more widgets** as you create them
2. **Version your releases** using Git tags
3. **Create a GitHub Actions workflow** for automated testing
4. **Share with the WorkJam community**

## 🤝 Sharing Your Work

Once published, share your widgets:
- Post the GitHub Pages link in WorkJam community forums
- Share on LinkedIn with `#WorkJam` tag
- Submit to WorkJam partner showcase (if applicable)

---

Need help? Open an issue on GitHub or reach out to the WorkJam SE community.
