# 跨平台适配说明

`motion-web-design` 的**模板数据**和**Agent 规则**是分开的，所以不限于 Cursor。

## 你需要什么

| 组件 | 文件 | 作用 |
|------|------|------|
| 模板库 | `catalog.json` + `prompts/*.md` | 328 条完整 Prompt |
| 行为规则 | `.cursor/skills/motion-web-design/RULES.md` | 告诉 Agent：保留动效底层，替换用户内容 |

## 各环境怎么接

### Cursor

```bash
git clone https://github.com/jasonmarkppp/motion-web-prompt-skill.git
cp -r motion-web-prompt-skill/.cursor/skills/motion-web-design ~/.cursor/skills/
cp -r motion-web-prompt-skill/prompts ./prompts
```

对话：「用 motion-web-design，以 XXX 为模板，改成我的品牌…」

### Claude Code / Codex / OpenAI 类 Agent

```bash
cp -r motion-web-prompt-skill/.cursor/skills/motion-web-design .agents/skills/
cp -r motion-web-prompt-skill/prompts ./prompts
cp motion-web-prompt-skill/catalog.json ./catalog.json
```

或在项目 `AGENTS.md` 里加一行：

```markdown
动效网页模板任务请读 `.agents/skills/motion-web-design/RULES.md`，模板在 `prompts/`。
```

### Windsurf / 其他带 Rules 的 IDE

- 把 `RULES.md` 内容复制到该工具的 Project Rules；或
- 把整个 `motion-web-design` 目录放到该工具支持的 skills 路径

### Bolt / Lovable / v0（无 Skill 系统）

1. 在本站或 GitHub 找到模板，复制 Prompt
2. 手动或让 ChatGPT 按 `RULES.md` 的「内容层 vs 实现层」改品牌/文案
3. 粘贴到 Bolt/Lovable 生成

也可一句话指令：

> 以下 Prompt 是实现层规格，不要改动画和布局。只把品牌改成 XXX，文案改成 YYY，配色改成 ZZZ。[粘贴模板]

### ChatGPT / Claude 网页（纯对话）

1. 先发 `RULES.md` 里「核心工作流」和「内容层 vs 实现层」两段
2. 再发 `prompts/{id}.md` 全文
3. 说明你的品牌/行业/配色

## 默认行为提醒

无论哪个平台，Agent 的**默认假设**应是：

- **保留**动效、CSS keyframes、scroll 逻辑、组件结构
- **替换**品牌、文案、行业内容、用户指定的配色/素材

只有用户说「原样」时才整段复制。

## 在线浏览（不装 Skill）

博客工具页可浏览、复制 Prompt：`/tools/motionsites`  
复制后同样按 `RULES.md` 只改内容层即可。
