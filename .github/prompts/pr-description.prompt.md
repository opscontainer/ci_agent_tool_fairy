---
mode: agent
description: Generate a pull request description from the repository template and recent git commits.
---

# Generate a pull request description

Use this prompt when preparing a PR description for this repository.

## Instructions

1. Read the repository PR template from PR_TEMPLATE.md if it exists.
2. Inspect the current branch changes and recent git history before drafting the description.
3. Gather evidence from the workspace and git history rather than inventing details.
4. Use the latest commits from the current branch as the source for the "Notable commits" section.
5. Keep the output concise, professional, and ready to paste into GitHub.

## Required workflow

- Check the current branch and repository status.
- Prefer the default branch name if available (master or main) and compare the current branch to it.
- Collect recent commits with commands such as:
  - git status --short
  - git log --oneline --decorate -n 10
  - git log --oneline --decorate <default-branch>..HEAD
  - git diff --stat <default-branch>...HEAD
- Summarize the changes into:
  - Summary
  - Why
  - What changed
  - Notable commits
  - Testing / Verification
  - Notes / Potential breaking changes

## Output requirements

- Follow the structure from PR_TEMPLATE.md when possible.
- Include bullet points under each section.
- Use commit hashes and short commit messages in the "Notable commits" section.
- If the repository has no PR template, fall back to a clear GitHub-style PR description with the same sections.
- Do not invent testing steps or breaking changes; only include them when supported by the repo context or commit history.
- If details are unclear, include a short placeholder note instead of making up facts.
