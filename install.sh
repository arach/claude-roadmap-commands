#!/bin/bash
# Claude Roadmap Commands Installer

set -e

echo "🚀 Installing Claude Roadmap Commands..."

# Ensure Claude commands directory exists
mkdir -p ~/.claude/commands

# Base URL for raw files
BASE_URL="https://raw.githubusercontent.com/arach/claude-roadmap-commands/main"

# Install project-level commands
echo "📁 Installing project commands..."
curl -sSL "$BASE_URL/commands/roadmap.md" -o ~/.claude/commands/roadmap.md
curl -sSL "$BASE_URL/commands/progress.md" -o ~/.claude/commands/progress.md  
curl -sSL "$BASE_URL/commands/next.md" -o ~/.claude/commands/next.md

# Install personal commands
echo "👤 Installing personal commands..."
curl -sSL "$BASE_URL/commands/user-roadmap.md" -o ~/.claude/commands/user-roadmap.md

# Setup personal roadmap template if needed
if [ ! -f ~/.claude/personal-roadmap.md ]; then
    echo "📋 Creating personal roadmap template..."
    curl -sSL "$BASE_URL/templates/personal-roadmap.md" -o ~/.claude/personal-roadmap.md
    echo "✅ Created personal roadmap at ~/.claude/personal-roadmap.md"
else
    echo "ℹ️  Personal roadmap exists, skipping template"
fi

echo ""
echo "🎉 Claude Roadmap Commands installed!"
echo ""
echo "📁 Project Commands:"
echo "   /project:roadmap [show|add|complete|analyze]"
echo "   /project:progress"  
echo "   /project:next"
echo ""
echo "👤 Personal Commands:"
echo "   /user:roadmap [show|add|start|complete]"
echo ""
echo "💡 Try: /project:roadmap show planned"