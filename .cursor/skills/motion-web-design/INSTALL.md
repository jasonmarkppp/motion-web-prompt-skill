# Agent 安装协议 — motion-web-design

当用户说 **「帮我安装这个 Skill」「安装 motion-web-design」「装一下动效网页 Skill」** 等，执行本协议，**一次性装齐规则 + 328 条模板**，不要只拷 SKILL.md。

## 目标

装完后目录结构（Cursor 全局）：

```
~/.cursor/skills/motion-web-design/     （Windows: %USERPROFILE%\.cursor\skills\motion-web-design\）
├── SKILL.md
├── RULES.md
├── COMPAT.md
├── examples.md
├── INSTALL.md
├── catalog.json
├── prompts/          ← 328 条，必须齐全
│   └── *.md
└── data/
    └── all-prompts.json
```

**关键**：`prompts/` 和 `catalog.json` 必须在 Skill 目录内，不要只装规则文件。

## 仓库地址

```
https://github.com/jasonmarkppp/motion-web-prompt-skill.git
```

## 方式 A：运行安装脚本（推荐）

Agent 在终端执行（按系统二选一）：

**Windows (PowerShell)**

```powershell
git clone --depth 1 https://github.com/jasonmarkppp/motion-web-prompt-skill.git "$env:TEMP\motion-web-prompt-skill"
& "$env:TEMP\motion-web-prompt-skill\scripts\install.ps1"
```

若已 clone 过，直接运行仓库内脚本：

```powershell
& "path\to\motion-web-prompt-skill\scripts\install.ps1"
```

**macOS / Linux**

```bash
git clone --depth 1 https://github.com/jasonmarkppp/motion-web-prompt-skill.git /tmp/motion-web-prompt-skill
bash /tmp/motion-web-prompt-skill/scripts/install.sh
```

## 方式 B：Agent 手动安装（无脚本时）

1. `git clone https://github.com/jasonmarkppp/motion-web-prompt-skill.git` 到临时目录
2. 删除旧目录：`~/.cursor/skills/motion-web-design`（若存在）
3. 创建 `~/.cursor/skills/motion-web-design/`
4. 复制 `.cursor/skills/motion-web-design/*` → 目标目录
5. 复制仓库根目录 `prompts/` → `~/.cursor/skills/motion-web-design/prompts/`
6. 复制 `catalog.json` → `~/.cursor/skills/motion-web-design/catalog.json`
7. 复制 `data/` → `~/.cursor/skills/motion-web-design/data/`

**Claude Code / Codex**（用户点名时）：同上，目标改为项目内 `.agents/skills/motion-web-design/`，或用户指定的 skills 路径。

## 安装后验证

Agent 必须自检并回报用户：

```powershell
# Windows 示例
$dst = "$env:USERPROFILE\.cursor\skills\motion-web-design"
Test-Path "$dst\SKILL.md"
Test-Path "$dst\catalog.json"
(Get-ChildItem "$dst\prompts\*.md").Count -ge 300
```

- [ ] `SKILL.md` 存在
- [ ] `catalog.json` 存在
- [ ] `prompts/` 下 `.md` 文件 ≥ 300 条
- [ ] 不依赖 GitHub 远程读模板（本地已齐全）

全部通过 → 告诉用户：「已安装完成，可直接说：用 motion-web-design，以 XXX 为模板…」

## 失败处理

| 问题 | 处理 |
|------|------|
| 无 git | 下载 ZIP：`https://github.com/jasonmarkppp/motion-web-prompt-skill/archive/refs/heads/master.zip`，解压后按方式 B 手动复制 |
| 无 ~/.cursor/skills | 先 `mkdir` 创建 |
| 权限不足 | 改目标为项目内 `.cursor/skills/motion-web-design/` |

## 给用户的一句话说明（安装成功后）

> motion-web-design 已装好（规则 + 328 条本地模板）。试试：「用 motion-web-design，以 interactive-discovery 为模板，品牌改成我的，动效别动」
