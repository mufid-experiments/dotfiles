# Aliases
alias gs='git stash'
alias gsp='git stash pop'

# Check out and pull main, or master if there is no main (locally or on origin).
# Older versions of this file made gcmgp an alias, and zsh won't define a function over an alias.
unalias gcmgp 2>/dev/null
gcmgp() {
  git rev-parse --git-dir >/dev/null || return
  local branch
  for branch in main master; do
    if git show-ref --quiet --verify "refs/heads/$branch" ||
       git show-ref --quiet --verify "refs/remotes/origin/$branch"; then
      git checkout "$branch" && git pull
      return
    fi
  done
  print -u2 "gcmgp: no main or master branch"
  return 1
}

# GH
alias ghopenweb='gh pr view --web'

# Worktree helpers (wt-create, wt-delete)
export PATH="${MUFID_PERSONAL_DOTFILES_PATH:-$HOME/.dotfiles}/bin:$PATH"

# A script cannot cd the calling shell, so wrap wt-create to enter the new worktree.
wt-create() {
  command wt-create "$@" || return
  local line dir
  for line in "${(@f)"$(git worktree list --porcelain)"}"; do
    [[ $line == "worktree "* ]] && dir=${line#worktree }
    [[ $line == "branch refs/heads/$1" ]] && cd "$dir" && return
  done
}

# Likewise, wrap wt-delete to leave the deleted worktree.
wt-delete() {
  local main=${${(f)"$(git worktree list --porcelain 2>/dev/null)"}[1]#worktree }
  WT_DELETE_SHELL=1 command wt-delete "$@" && [[ -n $main ]] && cd "$main"
}

