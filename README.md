# Claude Roadmap Commands

🎯 **Powerful roadmap management commands for Claude Code**

Transform your ROADMAP.md files from static documents into interactive planning tools. Manage both project-specific roadmaps and personal cross-project priorities directly within Claude Code.

## 🚀 Quick Install

```bash
curl -sSL https://raw.githubusercontent.com/arach/claude-roadmap-commands/main/install.sh | bash
```

## ✨ Features

### 📁 **Project Commands** 
- **`/project:roadmap`** - Interactive roadmap management (show, add, complete, analyze)
- **`/project:progress`** - Quick progress snapshots for standups
- **`/project:next`** - Smart recommendations for what to work on next

### 👤 **Personal Commands**
- **`/user:roadmap`** - Cross-project personal roadmap management

## 📖 Usage Examples

```bash
# View high priority features
/project:roadmap show high-priority

# Quick progress check  
/project:progress

# Get smart task recommendations
/project:next

# Manage personal priorities across projects
/user:roadmap show active
```

## 🎯 What You Get

**Rich formatted output with emojis and clear visual hierarchy:**

```
📊 Project Progress Report

✅ Completed: 15/24 features (62.5%)
🚧 In Progress: 1 feature  
📋 Planned: 8 features

Recent Wins:
✓ High-performance timer system
✓ Web version support

Next Up:
🎯 Session Statistics Dashboard
🌟 Focus Mode Browser Extension
```

**Smart analysis and recommendations:**
- Progress analytics and completion rates
- Priority-based task suggestions  
- Dependency analysis for planning
- Cross-project capacity management

## 🏗️ How It Works

1. **Install commands** to `~/.claude/commands/` (available in all Claude Code instances)
2. **Commands parse** your existing ROADMAP.md files intelligently  
3. **Get rich interactions** without changing your workflow
4. **Personal roadmap** for cross-project planning at `~/.claude/personal-roadmap.md`

## 📋 Roadmap Format

Works with standard markdown roadmaps:

```markdown
# Project Roadmap

## ✅ Completed Features
- [x] Feature A

## 🎯 High Priority  
#### Feature B ⭐ Most Important
*Description*
- [ ] Task 1
- [ ] Task 2

**Impact:** High | **Effort:** Medium
```

## 🤝 Contributing

Issues and PRs welcome! This tool emerged from real productivity needs in Claude Code.

---

**Transform your roadmaps into interactive planning tools!** 🚀