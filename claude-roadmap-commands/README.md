# Claude Roadmap Commands

🎯 **Powerful roadmap management commands for Claude Code**

Transform your ROADMAP.md files from static documents into interactive planning tools. Manage both project-specific roadmaps and personal cross-project priorities directly within Claude Code.

## ✨ Features

### 📁 **Project-Level Commands**
Manage individual project roadmaps (works with any `ROADMAP.md` file):
- **`/project:roadmap`** - Interactive roadmap management 
- **`/project:progress`** - Quick progress snapshots
- **`/project:next`** - Smart task recommendations

### 👤 **Personal-Level Commands**  
Manage your cross-project priorities and focus:
- **`/user:roadmap`** - Personal roadmap across all projects

## 🚀 Quick Start

### Installation
```bash
curl -sSL https://raw.githubusercontent.com/arach/claude-roadmap-commands/main/install.sh | bash
```

### Usage Examples
```bash
# View high priority features in current project
/project:roadmap show high-priority

# Get quick project progress snapshot
/project:progress

# See what to work on next
/project:next

# Manage personal cross-project priorities
/user:roadmap show active
```

## 📖 Command Reference

### Project Commands

#### `/project:roadmap [action]`
**Manage project roadmaps with rich formatting and analysis**

Actions:
- `show` - Display entire roadmap
- `show completed` - Completed features only  
- `show planned` - Planned features
- `show high-priority` - High priority items
- `add "Feature Name"` - Add new feature
- `complete "Feature Name"` - Mark as completed
- `analyze` - Progress analytics

Example:
```bash
/project:roadmap show high-priority
```
```
🎯 High Priority (Next 4 Features)

⭐ Session Statistics Dashboard - Most Impactful
Foundation 100% complete, just need beautiful UI
📊 Charts, timeline, productivity views, export functionality

🌟 Focus Mode Browser Extension - Most Innovative  
Game-changing website blocking with real-time sync
🚀 Chrome/Firefox extension, smart block lists
```

#### `/project:progress`
**Quick progress snapshot perfect for standups and reviews**

```bash
/project:progress
```
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

#### `/project:next`  
**Smart recommendations for what to work on next**

Analyzes priority, dependencies, effort vs impact, and suggests optimal next tasks.

### Personal Commands

#### `/user:roadmap [action]`
**Manage your personal cross-project roadmap**

Uses `~/.claude/personal-roadmap.md` for cross-project planning:
- `show` - Display personal roadmap
- `show active` - Current active work
- `show backlog` - Prioritized backlog  
- `add "Project: Feature"` - Add to backlog
- `start "Item"` - Move to active work
- `complete "Item"` - Mark as done

## 🏗️ Setup

### Automatic Setup
The installer creates:
- Command definitions in `~/.claude/commands/`
- Personal roadmap template at `~/.claude/personal-roadmap.md`

### Manual Setup
1. Copy command files to `~/.claude/commands/`
2. Copy personal roadmap template to `~/.claude/personal-roadmap.md`

### Integration with Dotfiles
```bash
# Add to your dotfiles install script
curl -sSL https://raw.githubusercontent.com/arach/claude-roadmap-commands/main/install.sh | bash
```

## 📋 Roadmap File Format

Works with standard markdown roadmap structure:

```markdown
# Project Roadmap

## ✅ Completed Features
- [x] Feature A
- [x] Feature B

## 🚧 In Progress  
- [ ] Feature C (currently working)

## 📋 Planned Features

### 🎯 High Priority
#### Feature D ⭐ Most Important
*Description of feature*
- [ ] Task 1
- [ ] Task 2

**Impact:** High | **Effort:** Medium
```

The commands intelligently parse this structure to provide rich interactions.

## 🤝 Contributing

Found a bug or have an idea? 
1. Open an issue
2. Submit a pull request  
3. Share your workflow improvements

## 📄 License

MIT License - feel free to use and modify for your projects.

---

**Made for the Claude Code community** 🚀

Transform your roadmaps from static documents into powerful planning tools!