Commit all changes and push to GitHub.

Instructions:
1. Run `git status` to see all changes
2. Run `git diff --staged` and `git diff` to understand what's being committed
3. Run `git log -3 --oneline` to see recent commit style
4. Stage all changes with `git add -A`
5. Create a descriptive commit message summarizing the changes
6. Commit with the message (include the Claude Code signature)
7. Push to the remote repository

If there's no remote configured, warn the user. If there are no changes to commit, inform the user.

Always use this commit message format:
```
<short summary of changes>

<bullet points of key changes if needed>

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude Opus 4.5 <noreply@anthropic.com>
```
