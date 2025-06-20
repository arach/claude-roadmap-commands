# Personal Roadmap Management

Manage your personal cross-project roadmap using `/user:roadmap`.

Uses `~/.claude/personal-roadmap.md` as your personal roadmap file.

## Available Actions

- `/user:roadmap show` - Display entire personal roadmap
- `/user:roadmap show active` - Show currently active work  
- `/user:roadmap show backlog` - Show backlog items
- `/user:roadmap add "Project: Feature"` - Add to backlog
- `/user:roadmap start "Item"` - Move to active work
- `/user:roadmap complete "Item"` - Mark as done

## Implementation

When you use these commands, I will:
1. Read your personal roadmap file at `~/.claude/personal-roadmap.md`
2. Parse the structure to understand your cross-project priorities
3. Perform the requested action (show, add, update status)
4. Update the file if changes were made
5. Provide formatted output with your current focus and next steps

This enables personal project management across all your work using Claude Code as your unified interface.