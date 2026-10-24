#!/usr/bin/env bash
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET="$HOME/.zshrc"
MARKER="# >>> .dotfiles zshrc >>>"

touch "$TARGET"

if grep -qF "$MARKER" "$TARGET"; then
  echo "zshrc already installed in $TARGET, skipping."
  exit 0
fi

{
  echo
  echo "$MARKER"
  cat "$DIR/zshrc"
  echo "# <<< .dotfiles zshrc <<<"
} >> "$TARGET"

echo "Appended zshrc to $TARGET."
