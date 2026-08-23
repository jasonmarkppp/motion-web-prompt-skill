# Agent 规则 — motion-web-design

本文件是 Agent 执行模板任务时的**硬性规则**。与用户请求冲突时，先问用户，再打破规则。

## 路径解析

按顺序查找模板文件：

1. 当前工作区根目录下的 `prompts/{id}.md`
2. 当前工作区根目录下的 `motion-web-prompt-skill/prompts/{id}.md`
3. `catalog.json` 同目录下的 `prompts/{id}.md`
4. GitHub Raw（仅当本地没有 clone）：
   `https://raw.githubusercontent.com/jasonmarkppp/motion-web-prompt-skill/main/prompts/{id}.md`

索引文件：`catalog.json`（328 条元数据，含 id / title / category / platform）。

## 模式 A：直接套模板

**何时用**：用户说「套 XXX 模板」「用 XXX 生成」「原样输出」。

**做法**：

1. 用 title 或 id 在 `catalog.json` 定位模板
2. 读取完整 `prompts/{id}.md`
3. 原样输出 Prompt，或按 Prompt 直接写代码
4. **不要**擅自删减 URL、动画参数、z-index、字号

## 模式 B：套模板 + 微调

**何时用**：用户说「改成我的品牌」「换配色」「换行业」「类似 XXX 但……」。

**默认保留**（除非用户明确要求改）：

- 技术栈（React / Vite / Tailwind / Framer Motion 等）
- 文件结构 / 组件树
- 动画 spec（keyframes、stagger、scroll 数学）
- 布局层级与 responsive 断点
- 外部资源 URL（图片、视频、字体链接）

**允许改**（仅改用户点名的维度）：

| 维度 | 示例 |
|------|------|
| 品牌 | 公司名、Logo 文案、CTA |
| 配色 | 整套色板替换，需检查对比度 |
| 文案 | Headline、段落、FAQ |
| 行业 | Features 卖点、案例类型 |
| 版式 | 仅当用户明确说「Hero 改左文右图」等 |

**输出要求**：

- 给出**完整 Prompt**（不是 diff）
- 开头 1~2 句说明：基于哪条模板、改了什么

## 模式 C：推荐模板

**何时用**：用户没指定模板，只描述风格。

1. 读 `catalog.json`
2. 按 platform（WEB/APP）、category、title、description 匹配
3. 推荐 1~3 条，带 id 和一句话理由
4. 用户确认后再读 `prompts/{id}.md`

## 禁止事项

- 不要声称模板来自任何第三方官方产品
- 不要在输出里写「付费/免费」「Premium」等标签
- 不要凭记忆编造 Prompt；必须读文件
- 不要删除 Prompt 里的 Asset URL 除非用户自备素材并要求替换

## 生成代码时

- 以模板 Prompt 为唯一规格来源
- 一个 signature 动效必须保留（spotlight、parallax、glass 等）
- 移动端 breakpoint 按模板规定（常见 768px）
