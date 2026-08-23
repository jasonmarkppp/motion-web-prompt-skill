# motion-web-prompt-skill

328 条 AI 动效网页设计 Prompt 模板 + **通用 Agent 规则** + **一键安装脚本**。

**默认用法**：选定模板 → **动效 / CSS / 布局底层保留** → **品牌与文案换成用户自己的**。  
不限 Cursor，见 [COMPAT.md](.cursor/skills/motion-web-design/COMPAT.md)。

## 给别人用（推荐）

把仓库链接发给对方，让对方在 Agent 里说：

> **帮我安装 motion-web-design 这个 Skill**

Agent 会读 `INSTALL.md`，运行安装脚本，**规则 + 328 条模板一次性装进** `~/.cursor/skills/motion-web-design/`。

### 手动一键安装

```bash
git clone https://github.com/jasonmarkppp/motion-web-prompt-skill.git
cd motion-web-prompt-skill

# Windows (PowerShell)
.\scripts\install.ps1

# macOS / Linux
bash scripts/install.sh
```

装完后目录示例：

```
~/.cursor/skills/motion-web-design/
├── SKILL.md / RULES.md / INSTALL.md
├── catalog.json
├── prompts/          ← 328 条，本地读，不依赖 GitHub
└── data/
```

## 旧方式（不推荐，易漏模板）

```bash
cp -r motion-web-prompt-skill/.cursor/skills/motion-web-design ~/.cursor/skills/
cp -r motion-web-prompt-skill/prompts ./prompts   # 容易漏这一步
```

请改用 `scripts/install.ps1` / `install.sh`。

## 目录

| 路径 | 说明 |
|------|------|
| `scripts/install.ps1` / `install.sh` | **一键安装**（规则 + 全部模板） |
| `.cursor/skills/motion-web-design/INSTALL.md` | Agent 安装协议 |
| `.cursor/skills/motion-web-design/SKILL.md` | Skill 入口 |
| `.cursor/skills/motion-web-design/RULES.md` | Agent 规则（必读） |
| `catalog.json` | 328 条索引 |
| `prompts/*.md` | 单条 Prompt |

## 分类

- **WEB** 311 条 · **APP** 17 条

## 免责声明

模板仅供学习与个人项目参考。与任何第三方商业产品无关联。
