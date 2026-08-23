#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SKILL_SRC="$REPO_ROOT/.cursor/skills/motion-web-design"
SKILL_DST="${HOME}/.cursor/skills/motion-web-design"

if [[ ! -d "$SKILL_SRC" ]]; then
  echo "找不到 Skill 源目录: $SKILL_SRC" >&2
  exit 1
fi

echo "motion-web-design 安装中..."
echo "  源: $REPO_ROOT"
echo "  目标: $SKILL_DST"

mkdir -p "$(dirname "$SKILL_DST")"
rm -rf "$SKILL_DST"
mkdir -p "$SKILL_DST"

cp -R "$SKILL_SRC/"* "$SKILL_DST/"
cp -R "$REPO_ROOT/prompts" "$SKILL_DST/prompts"
cp "$REPO_ROOT/catalog.json" "$SKILL_DST/catalog.json"

if [[ -d "$REPO_ROOT/data" ]]; then
  cp -R "$REPO_ROOT/data" "$SKILL_DST/data"
fi

COUNT="$(find "$SKILL_DST/prompts" -name '*.md' | wc -l | tr -d ' ')"
echo ""
echo "安装完成!"
echo "  路径: $SKILL_DST"
echo "  模板数: $COUNT"
echo ""
echo "试用: 用 motion-web-design，以 interactive-discovery 为模板，品牌改成我的"

if [[ "$COUNT" -lt 300 ]]; then
  echo "警告: 模板数量偏少" >&2
  exit 1
fi
