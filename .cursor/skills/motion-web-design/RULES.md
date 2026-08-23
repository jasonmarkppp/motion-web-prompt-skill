# Agent 规则 — motion-web-design

本文件是**通用 Agent 规则**，不限 Cursor。任何能读 Markdown 的 AI 编程助手都应遵守。

与用户请求冲突时，先问用户，再打破规则。

---

## 核心工作流（默认，最重要）

大多数用户的真实需求是：

> **选定一个模板 → 动效 / CSS / 布局底层逻辑基本不变 → 内容换成自己的**

把它拆成两层：

| 层 | 保留什么 | 替换什么 |
|----|----------|----------|
| **实现层**（默认不动） | React/Vite/Tailwind/Framer Motion 等技术栈；组件树与文件结构；keyframes、stagger、scroll 数学、parallax、glass、spotlight 等 signature 动效；z-index 层级；responsive 断点（常见 768px）；布局比例（如左文右图、sticky 视差） | 仅当用户**明确**要求改布局或动效时才动 |
| **内容层**（默认替换） | — | 品牌名 / Logo 文案；Headline、段落、FAQ、CTA；行业卖点与案例；配色（用户给了色板就换）；用户自备的图片/视频 URL |

**默认假设**：用户没说要「原样」或「只改一处」，就走 **选模板 + 内容替换**（下面的模式 B）。  
只有用户明确说「原样」「不要改」「直接复制」时，才走模式 A。

### 输出格式（模式 B）

1. 开头 1~2 句：基于哪条模板（id + title）、内容层改了什么、实现层保留了什么
2. 输出**完整 Prompt**（不是 diff），可直接丢给 Bolt / Lovable / Cursor / Claude 写代码
3. 若用户要代码：严格按模板实现层写，只注入用户内容

---

## 路径解析

`skill_root` = 本 `RULES.md` 所在目录（完整安装后含 `prompts/` 与 `catalog.json`）。

按顺序查找模板：

1. `{skill_root}/prompts/{id}.md`（**完整安装后的首选**）
2. 工作区根目录 `prompts/{id}.md`
3. 工作区 `motion-web-prompt-skill/prompts/{id}.md`
4. 与任意本地 `catalog.json` 同目录的 `prompts/{id}.md`
5. **仅当本地都没有时**，GitHub Raw 兜底：
   `https://raw.githubusercontent.com/jasonmarkppp/motion-web-prompt-skill/main/prompts/{id}.md`

索引：优先 `{skill_root}/catalog.json`，其次工作区内的 `catalog.json`（328 条，含 id / title / category / platform / description）。

未安装完整包（只有 SKILL.md、无本地 prompts）时 → 先执行 [INSTALL.md](INSTALL.md)。

---

## 模式 A：原样套模板

**何时用**：用户明确说「原样」「不要改」「直接用这个 Prompt」。

1. 在 `catalog.json` 定位模板
2. 读完整 `prompts/{id}.md`
3. 原样输出 Prompt，或按 Prompt 写代码
4. **不要**擅自删 URL、动画参数、z-index、字号

---

## 模式 B：选模板 + 内容替换（默认）

**何时用**：用户给了模板名/id，或描述了想要的风格后选定模板，并提到自己的品牌/行业/文案/配色。  
也包括：「类似 XXX」「以 XXX 为底」「改成我的」——**即使没细说改什么，也要主动替换明显占位品牌与文案**。

**必须保留（实现层）**：

- 技术栈与依赖
- 组件结构与层级
- 所有 animation spec（keyframes 名称可保留，参数不改）
- scroll / parallax / mask / glass 等核心交互
- 断点与 spacing 体系
- 模板里的 Asset URL——除非用户提供了替代素材

**必须替换（内容层，用户没给细节时用合理占位并标注 `[待填]`）**：

- 品牌名、产品名、nav 链接文案
- Hero / Features / FAQ / Footer 等所有面向用户的文字
- 行业向的 feature 列表、数据、案例描述
- 用户指定的配色；未指定则保留原配色但换掉品牌相关色名引用

**禁止**：

- 把模板改写成「另一个完全不同风格」的页面
- 删掉 signature 动效来「简化」
- 合并/删减章节，除非用户要求

---

## 模式 C：推荐模板

**何时用**：用户只描述风格，没指定模板。

1. 读 `catalog.json`
2. 按 platform（WEB/APP）、category、title、description 匹配
3. 推荐 1~3 条（id + 一句话理由）
4. 用户确认后 → **默认进入模式 B**（问品牌/行业/配色，再输出完整 Prompt）

---

## 生成代码时

- 模板 Prompt 是实现层的唯一规格来源
- 至少保留一个 signature 动效（spotlight、parallax、scroll scene 等）
- 内容层文字全部用用户提供的；没有的用 `[待填]` 并列出需用户补充的字段
- 移动端 breakpoint 按模板规定

### 交付格式：单文件 HTML + CDN（默认）

**默认输出一个可双击打开的 `index.html`**，不要默认搭 Vite / npm 工程——除非用户明确要「React 项目」「Vite 工程」「要部署到 Next」等。

原因：单 HTML + CDN 引用，用户**保存后双击就能在浏览器里预览**，零安装、零构建。

**必须遵守**：

1. **一个主文件**：默认只交付 `index.html`（CSS/JS 可内联在文件里；确有必要才拆 `style.css`）
2. **依赖走 CDN**，常见来源：
   - Tailwind：`https://cdn.tailwindcss.com`（`<script>` 内写 `tailwind.config`）
   - React（需要时）：`unpkg` / `esm.sh` 的 UMD 或 ESM
   - 字体：Google Fonts `<link>`
   - 图标：lucide 可用 inline SVG，或 CDN
3. **资源 URL**：图片/视频继续用模板里的远程 URL，或用户提供的链接
4. **动效实现**：
   - 模板里的 keyframes / CSS animation → 写在 `<style>` 里
   - scroll / parallax / spotlight → 用原生 JS（`requestAnimationFrame`、`scroll` 监听）实现同等效果
   - 原模板用 Framer Motion 的 → **翻译成 CSS + 原生 JS**，不要为此强行上 npm
5. **文件头注释**：写明「双击此 HTML 即可在浏览器打开」

**模板写的是 React + Vite + Tailwind 时**：读模板规格 → **降级翻译**为 HTML + CDN + 原生 JS，**实现层视觉效果与交互保持一致**，不要照抄「必须 Vite」除非用户点名要工程化项目。

**例外**（才用多文件 / 构建工具）：

- 用户明确说：要 Vite、要 Next.js、要组件库、要上线部署的完整工程
- 用户已有项目，要求把页面嵌进现有代码库

**自检清单**（交付前）：

- [ ] 不依赖 `npm install` 就能打开
- [ ] 双击 `index.html` 能跑（动效、字体、图片能加载）
- [ ] signature 动效还在
- [ ] 内容是用户自己的（内容层已替换）

---

## 禁止事项

- 不要声称模板来自任何第三方官方产品
- 不要写「付费/免费」「Premium」等标签
- 不要凭记忆编造 Prompt；必须读文件
- 不要删除 Asset URL，除非用户自备素材并要求替换
