# Aliases
alias gcmgp='git checkout main; git pull'

# Worktree helpers (wt-create, wt-delete)
export PATH="$HOME/.dotfiles/bin:$PATH"

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
