# Worktree helpers (wt-create, wt-delete)
export PATH="${MUFID_PERSONAL_DOTFILES_PATH:-$HOME/.dotfiles}/bin:$PATH"

# One file per command in commands/.
# ${0:A:h} is the directory of this file, so this works whatever the shell's current directory is.
source "${0:A:h}/commands/gs"
source "${0:A:h}/commands/gsp"
source "${0:A:h}/commands/gcmgp"
source "${0:A:h}/commands/ghopenweb"
source "${0:A:h}/commands/cddotfiles"
source "${0:A:h}/commands/wt-create"
source "${0:A:h}/commands/wt-delete"
