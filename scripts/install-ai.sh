#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd -P "$SCRIPT_DIR/.." && pwd)"
INSTALL_DIR="${AI_BIN_DIR:-$HOME/.local/bin}"
TARGET="$INSTALL_DIR/ai"
SOURCE="$REPO_ROOT/scripts/ai"

if [ ! -f "$SOURCE" ]; then
  echo "Error: $SOURCE not found." >&2
  exit 1
fi

mkdir -p "$INSTALL_DIR"
ln -sfn "$SOURCE" "$TARGET"
chmod +x "$SOURCE"

echo "Installed ai -> $TARGET"
if ! command -v ai >/dev/null 2>&1; then
  echo "Note: $INSTALL_DIR is not on your PATH." >&2
  echo "Add this to your shell config:" >&2
  echo "  export PATH=\"$INSTALL_DIR:\$PATH\"" >&2
fi
