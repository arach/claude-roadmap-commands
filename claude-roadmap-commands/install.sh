#!/bin/bash
# Claude Roadmap Commands Installer
# Install roadmap management commands for Claude Code

set -e

echo "🚀 Installing Claude Roadmap Commands..."

# Ensure Claude commands directory exists
mkdir -p ~/.claude/commands

# Base URL for raw files (update when repo is public)
BASE_URL="https://raw.githubusercontent.com/arach/claude-roadmap-commands/main"

# Install project-level commands
echo "📁 Installing project-level commands..."
curl -sSL "$BASE_URL/commands/roadmap.md" -o ~/.claude/commands/roadmap.md
curl -sSL "$BASE_URL/commands/progress.md" -o ~/.claude/commands/progress.md  
curl -sSL "$BASE_URL/commands/next.md" -o ~/.claude/commands/next.md

# Install personal/user-level commands
echo "👤 Installing personal commands..."
curl -sSL "$BASE_URL/commands/user-roadmap.md" -o ~/.claude/commands/user-roadmap.md

# Setup personal roadmap template if it doesn't exist
if [ ! -f ~/.claude/personal-roadmap.md ]; then
    echo "📋 Creating personal roadmap template..."
    curl -sSL "$BASE_URL/templates/personal-roadmap.md" -o ~/.claude/personal-roadmap.md
    echo "✅ Created personal roadmap at ~/.claude/personal-roadmap.md"
else
    echo "ℹ️  Personal roadmap already exists, skipping template creation"
fi

echo ""
echo "🎉 Claude Roadmap Commands installed successfully!"
echo ""
echo "📁 Project Commands (work with individual project roadmaps):"
echo "   /project:roadmap [show|add|complete|analyze]"
echo "   /project:progress"
echo "   /project:next"
echo ""
echo "👤 Personal Commands (manage cross-project priorities):"
echo "   /user:roadmap [show|add|start|complete]"
echo ""
echo "💡 Quick start:"
echo "   1. In any project: /project:roadmap show planned"
echo "   2. For personal planning: /user:roadmap show active"
echo ""
echo "📖 Learn more: https://github.com/arach/claude-roadmap-commands"