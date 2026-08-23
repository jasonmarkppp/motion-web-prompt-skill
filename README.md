# motion-web-prompt-skill

328 条 AI 动效网页设计 Prompt 模板 + **通用 Agent 规则**。

**默认用法**：选定模板 → **动效 / CSS / 布局底层保留** → **品牌与文案换成用户自己的**。  
不限 Cursor，见 [COMPAT.md](.cursor/skills/motion-web-design/COMPAT.md)。

## 快速开始

```bash
git clone https://github.com/jasonmarkppp/motion-web-prompt-skill.git
cp -r motion-web-prompt-skill/.cursor/skills/motion-web-design ~/.cursor/skills/   # Cursor
cp -r motion-web-prompt-skill/prompts ./prompts
cp motion-web-prompt-skill/catalog.json ./catalog.json
```

Claude Code / Codex 等：复制 Skill 到 `.agents/skills/motion-web-design/` 即可。

## 目录

| 路径 | 说明 |
|------|------|
| `.cursor/skills/motion-web-design/SKILL.md` | Skill 入口 |
| `.cursor/skills/motion-web-design/RULES.md` | **Agent 规则（必读）** |
| `.cursor/skills/motion-web-design/COMPAT.md` | Cursor / Claude / Bolt / Lovable 等适配 |
| `catalog.json` | 328 条索引 |
| `prompts/*.md` | 单条 Prompt |

## 分类

- **WEB** 311 条 · **APP** 17 条

## 免责声明

模板仅供学习与个人项目参考。与任何第三方商业产品无关联。
