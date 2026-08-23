---
name: motion-web-design
description: 动效网页 Prompt 模板库。328 条 WEB/APP 模板。默认工作流：选定模板，保留动效/CSS/布局底层，替换为用户自己的品牌与文案；也支持原样输出。兼容 Cursor、Claude Code、Codex、Windsurf 及任何可读 RULES.md 的 Agent。触发：网页模板、落地页 Prompt、套模板、改模板、动效网页、motion-web-design。安装触发：帮我安装这个 Skill、安装 motion-web-design、装动效网页 Skill、install motion-web-design — 读 INSTALL.md 一键装齐规则+全部模板。
---

# motion-web-design

328 条结构化网页设计 Prompt。**默认用法不是原样复制，而是：选模板 → 底层动效逻辑不变 → 内容换成用户自己的。**

Agent 必须读 [RULES.md](RULES.md)（通用规则，不限 Cursor）。

## 安装（用户说「帮我装这个 Skill」时）

**先读 [INSTALL.md](INSTALL.md)**，运行 `scripts/install.ps1` 或 `scripts/install.sh`，把 **规则 + prompts + catalog** 一次性装进 `~/.cursor/skills/motion-web-design/`。不要只复制 SKILL.md。

## 默认工作流

```
1. 用户选定模板（或让 Agent 从 catalog 推荐）
2. Agent 读 prompts/{id}.md
3. 保留：技术栈、布局结构、keyframes、parallax/scroll/glass 等动效、断点
4. 替换：品牌、文案、行业卖点、CTA、用户给的配色/素材
5. 输出完整 Prompt；若写代码 → **默认单文件 `index.html` + CDN，双击即可打开**
```

| 用户意图 | 模式 |
|----------|------|
| 「改成我的品牌 / 行业 / 文案」（最常见） | **模式 B：内容替换**（默认） |
| 「原样 / 不要改 / 直接复制」 | 模式 A：原样输出 |
| 「帮我找一个 XX 风格的」 | 模式 C：推荐 → 再进模式 B |

细节见 [RULES.md](RULES.md)（含 **HTML + CDN 默认可双击预览** 规则）。

## 适用环境（不只 Cursor）

| 环境 | 安装方式 |
|------|----------|
| **Cursor** | `cp -r .../.cursor/skills/motion-web-design ~/.cursor/skills/` |
| **Claude Code / Codex / 同类** | 复制到 `.agents/skills/motion-web-design/`，或把 [RULES.md](RULES.md) 链进 `AGENTS.md` |
| **Windsurf / 其他 IDE Agent** | 复制 Skill 目录到该工具的 skills/rules 目录；或项目内放 `prompts/` + 引用 `RULES.md` |
| **Bolt / Lovable / v0 等** | 从 [GitHub 仓库](https://github.com/jasonmarkppp/motion-web-prompt-skill) 或本站复制 Prompt；按 RULES 只改内容层 |
| **ChatGPT / Claude 网页** | 粘贴模板 Prompt + 附上 RULES 里「内容层 vs 实现层」说明 |

**完整安装后**：`prompts/` + `catalog.json` 与 `RULES.md` 同在 Skill 目录内，本地读模板，不依赖 GitHub。

完整跨平台说明：[COMPAT.md](COMPAT.md)

## 给别人安装（一句话）

用户说「帮我安装 motion-web-design」→ Agent 读 [INSTALL.md](INSTALL.md) 并执行安装脚本。

手动：

```bash
git clone https://github.com/jasonmarkppp/motion-web-prompt-skill.git
# Windows
.\motion-web-prompt-skill\scripts\install.ps1
# macOS / Linux
bash motion-web-prompt-skill/scripts/install.sh
```

## 调用示例

**最常见（内容替换，默认）**

```
用 motion-web-design，以 dreamcore-landing 为模板，品牌改成「小氵AI」，文案按 AI 工具站写，动效和布局别动
```

```
@motion-web-design 选 interactive-discovery，我是做地质科普的，配色偏暖橙，其他实现层保留
```

**原样**

```
用 motion-web-design，原样输出 bold-studio 的 Prompt
```

**推荐**

```
用 motion-web-design 找一个 WEB Portfolio，推荐 3 条
```

## 数据文件

| 文件 | 说明 |
|------|------|
| `catalog.json` | 328 条索引 |
| `prompts/{id}.md` | 单条完整 Prompt |
| `data/all-prompts.json` | 全文 JSON |
| `RULES.md` | Agent 规则（必读） |

## 分类

- **WEB** 311 条 · **APP** 17 条

## 附加资源

- 跨平台适配：[COMPAT.md](COMPAT.md)
- 案例：[examples.md](examples.md)
