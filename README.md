# Requirement

- Ruby 4.0.9 via rbenv/rvm
- Mac M-series
- macOS 27

# Installing

On a new computer:

    cd
    git clone git@github.com:mufid-experiments/dotfiles.git .dotfiles
    cd .dotfiles
    install/zsh
    install/claude

The install scripts are idempotent, so they are safe to re-run (e.g. after pulling changes).
They are Ruby scripts and run on the system Ruby that ships with macOS.

## Claude Memory

`install/claude` replaces `~/.claude/CLAUDE.md` with the following, backing up the old file if it differs:

    Always read ~/.dotfiles/AGENT_DIRECTIVE.md before running any action.

## Commands

Each shell command (alias or function) lives in its own file under `commands/`, and `zshrc` sources each one explicitly:

    source "${0:A:h}/commands/gcmgp"

To add a command, create `commands/<name>` and add a `source` line for it to `zshrc`.
To disable one, remove or comment out its line.

`commands/` holds code that runs inside your shell (aliases, and functions that need to `cd`).
`bin/` holds standalone scripts on your `PATH`.

## Worktree Helpers

`install/zsh` adds `bin/` to your `PATH`, which provides:

- `wt-create <branchname>` creates a worktree of the current repository at `../<repo-name>-<branchname>` (`/` in the branch name becomes `-`). It creates the branch if it doesn't exist yet. In zsh it is wrapped by a function (`commands/wt-create`) that then `cd`s into the new worktree.
- `wt-delete` removes the current worktree. It fails if the current directory is not a linked git worktree. It leaves the branch in place. In zsh it is wrapped by a function (`commands/wt-delete`) that then `cd`s to the main checkout.
