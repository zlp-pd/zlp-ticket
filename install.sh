#!/usr/bin/env bash
# Cài skill từ repo này vào ~/.claude/skills/
#
# Usage:
#   ./install.sh <skill-name>        Cài một skill (copy)
#   ./install.sh --all               Cài tất cả skill
#   ./install.sh --link <skill-name> Symlink thay vì copy (dev mode)
#   ./install.sh --link --all        Symlink tất cả
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_SRC="$REPO_DIR/skills"
DEST="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"

LINK=0
ALL=0
TARGET=""

for arg in "$@"; do
  case "$arg" in
    --link) LINK=1 ;;
    --all)  ALL=1 ;;
    -h|--help)
      grep '^#' "$0" | sed 's/^# \{0,1\}//' | head -12; exit 0 ;;
    --*) echo "Không rõ option: $arg" >&2; exit 1 ;;
    *) TARGET="$arg" ;;
  esac
done

if [[ "$ALL" -eq 0 && -z "$TARGET" ]]; then
  echo "Cần chỉ định <skill-name> hoặc --all. Xem: ./install.sh --help" >&2
  exit 1
fi

mkdir -p "$DEST"

install_one() {
  local name="$1"
  local src="$SKILLS_SRC/$name"
  if [[ ! -f "$src/SKILL.md" ]]; then
    echo "✗ Bỏ qua '$name' — không thấy $src/SKILL.md" >&2
    return 1
  fi
  local dst="$DEST/$name"
  rm -rf "$dst"
  if [[ "$LINK" -eq 1 ]]; then
    ln -s "$src" "$dst"
    echo "✓ Đã symlink $name → $dst"
  else
    cp -R "$src" "$dst"
    echo "✓ Đã cài $name → $dst"
  fi
}

if [[ "$ALL" -eq 1 ]]; then
  for d in "$SKILLS_SRC"/*/; do
    install_one "$(basename "$d")" || true
  done
else
  install_one "$TARGET"
fi

echo "Xong. Mở lại Claude Code để nhận skill mới."
