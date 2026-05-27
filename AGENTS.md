# Agent Guidelines

- Inspect the repo before changing files.
- Keep changes focused on the user's request.
- Follow existing patterns and tooling.
- Preserve user changes in the workspace.
- Avoid unrelated refactors, formatting churn, and dependency changes.
- Ask only when a required decision cannot be inferred safely.

## Workflow

- Default to blueprint mode.
- Before changing files, explain the intended changes.
- Wait for the user's explicit `GO` before making edits.

## Scripts

- Treat shell scripts as production code.
- Validate inputs before using them in commands, paths, SQL, or config.
- Quote shell variables unless word splitting is intentional.
- Avoid hardcoded secrets and local machine assumptions.
- Use destructive commands only when explicitly requested.

## Verify

- Run targeted checks when available.
- For shell scripts, run `bash -n` after changes.
- State clearly when something could not be verified.

## Git

- Never create git commits.
- If asked for a commit message, output only a Conventional Commits style
  message.
- If asked to commit, do not commit; provide the commit message instead.
