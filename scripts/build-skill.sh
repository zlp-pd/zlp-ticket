#!/usr/bin/env bash
# Đóng gói một folder skill thành file .skill (zip) trong dist/
#
# Usage:
#   ./scripts/build-skill.sh <skill-name>   Đóng gói một skill
#   ./scripts/build-skill.sh --all          Đóng gói tất cả skill
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILLS_SRC="$REPO_DIR/skills"
DIST="$REPO_DIR/dist"

build_one() {
  local name="$1"
  local src="$SKILLS_SRC/$name"
  if [[ ! -f "$src/SKILL.md" ]]; then
    echo "✗ Bỏ qua '$name' — không thấy $src/SKILL.md" >&2
    return 1
  fi
  mkdir -p "$DIST"
  local out="$DIST/$name.skill"
  rm -f "$out"
  # Zip với path 'name/...' bên trong (khớp cách skill được giải nén)
  ( cd "$SKILLS_SRC" && zip -q -r -X "$out" "$name" -x '*.DS_Store' )
  echo "✓ $out"
}

if [[ "${1:-}" == "--all" ]]; then
  for d in "$SKILLS_SRC"/*/; do
    build_one "$(basename "$d")" || true
  done
elif [[ -n "${1:-}" ]]; then
  build_one "$1"
else
  echo "Cần <skill-name> hoặc --all" >&2
  exit 1
fi
