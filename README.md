# WorkJam Widget Library

A collection of embeddable HTML widgets for WorkJam demos and implementations, designed with Cal AI design principles.

## 🎨 Widgets

### 1. Employee Dashboard Widget
**File:** `employee-dashboard.html`

Displays employee and store scores with a clean information table showing tasks, priorities, and action buttons.

**Features:**
- Employee & Store score display with heart icons
- Priority-based task list (High/Normal/Low)
- Overdue item highlighting
- Responsive mobile design

**Demo:** [Live Demo](https://yourusername.github.io/workjam-widgets/employee-dashboard.html)

### 2. Task Score Widget
**File:** `task-score-widget.html`

Real-time task health and store performance metrics dashboard.

**Features:**
- Task Health Score with trend indicators
- Store Score with trend indicators
- Detailed metrics (completion rate, compliance, etc.)
- Status indicators with color coding
- Auto-refresh capability

**Demo:** [Live Demo](https://yourusername.github.io/workjam-widgets/task-score-widget.html)

## 🚀 Usage

### Embed in WorkJam

1. **Copy the widget HTML file**
2. **In WorkJam Admin:**
   - Navigate to Content Management
   - Create a new HTML widget/content block
   - Paste the entire HTML file content
   - Publish

### Standalone Usage

Simply open any HTML file in a web browser or host on any web server.

### Integration with WorkJam API

Each widget includes JavaScript hooks for connecting to WorkJam's API:

```javascript
// Example: Update task scores from WorkJam
function fetchWorkJamScores() {
    fetch('YOUR_WORKJAM_API_ENDPOINT')
        .then(response => response.json())
        .then(data => {
            updateScores(data.taskHealth, data.storeScore, data.metrics);
        });
}
```

## 🎨 Design System

All widgets follow Cal AI design principles:

- **Typography:** System font stack (-apple-system, Inter, Segoe UI)
- **Colors:** 
  - Primary: `#059669` (Green)
  - Accent: `#f59e0b` (Amber/Gold)
  - Error: `#dc2626` (Red)
- **Spacing:** 4px base unit (8px, 16px, 24px, 32px)
- **Border Radius:** 8px (small), 12px (medium), 16px (large)
- **Shadows:** Subtle, layered approach

## 📱 Responsive Design

All widgets are fully responsive and tested on:
- Desktop (1920px+)
- Tablet (768px - 1024px)
- Mobile (320px - 767px)

## 🔧 Customization

### Changing Colors

Each widget uses CSS custom properties. Add this to override:

```css
:root {
    --primary-color: #059669;
    --accent-color: #f59e0b;
    --error-color: #dc2626;
}
```

### Updating Data

Each widget includes update functions:

**Employee Dashboard:**
```javascript
// Add your WorkJam navigation logic
document.querySelectorAll('.action-button').forEach(button => {
    button.addEventListener('click', function(e) {
        // Your logic here
    });
});
```

**Task Score Widget:**
```javascript
updateScores(taskHealth, storeScore, {
    tasksCompleted: '47/50',
    tasksInProgress: 3,
    onTimeRate: 94,
    complianceRate: 96
});
```

## 📦 Installation

### Option 1: Direct Download
Download individual HTML files and use as-is.

### Option 2: Clone Repository
```bash
git clone https://github.com/yourusername/workjam-widgets.git
cd workjam-widgets
```

### Option 3: CDN (Coming Soon)
```html
<script src="https://cdn.jsdelivr.net/gh/yourusername/workjam-widgets@main/dist/widgets.min.js"></script>
```

## 🤝 Contributing

Contributions welcome! Please:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/new-widget`)
3. Commit changes (`git commit -m 'Add new widget'`)
4. Push to branch (`git push origin feature/new-widget`)
5. Open a Pull Request

## 📄 License

MIT License - feel free to use in your WorkJam implementations.

## 🐛 Issues & Support

- **Report bugs:** [GitHub Issues](https://github.com/yourusername/workjam-widgets/issues)
- **Feature requests:** Open an issue with the `enhancement` label

## 📝 Changelog

### v1.0.0 (2026-04-10)
- Initial release
- Employee Dashboard Widget
- Task Score Widget
- Cal AI design system implementation

---

Built with ❤️ for the WorkJam community
