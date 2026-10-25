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
