# 案例

## 默认：选模板 + 内容替换（最常见）

**用户**：用 dreamcore-landing，我是 AI 写作工具「笔灵」，配色偏蓝紫，动效别动。

**Agent**：

1. 读 `prompts/dreamcore-landing.md`
2. 保留：双场景 sticky 视差、窗帘入场、Arc 卡片 slider、所有 keyframes 与 scroll 数学
3. 替换：nav 文案、Hero「FALL INTO REVERIE」→ 笔灵相关 headline、Scene 2 文案、9 张卡片 title/desc
4. 配色：`#0a0608` 背景可保留或微调；卡片 pastel 色按蓝紫系调整
5. 输出完整 Prompt，开头说明「基于 dreamcore-landing，实现层保留，内容层替换为笔灵」

---

## 只改品牌，其余不动

**用户**：interactive-discovery，品牌改成「小氵AI」

**Agent**：只替换 Lithos / 导航 / CTA / 段落中的品牌与地质文案 → 改成 AI 相关；**不碰** spotlight reveal 的 canvas mask 逻辑。

---

## 原样输出（用户明确要求时）

**用户**：原样输出 bold-studio 的 Prompt

**Agent**：读文件 → 全文输出，不做修改。

---

## 先推荐再定制

**用户**：找一个 WEB 的 Portfolio 模板

**Agent**：

1. 筛 `catalog.json` → 推荐 3 条（如 `3d-jack-portfolio-hero` 等）
2. 用户选定后问：品牌名？行业？主色？
3. 进入模式 B 输出完整 Prompt

---

## 无 Agent（Bolt / Lovable 手动）

1. 从本站复制 `dreamcore-landing` Prompt
2. 自行或用 ChatGPT 替换所有面向用户的英文文案为你的中文/品牌
3. **不要删** `ARCHITECTURE`、`LAYER STACK`、`keyframes` 等实现层段落
4. 粘贴到 Lovable 生成

---

## 混搭（进阶）

**用户**：Electric 的 neon 背景 + Forma 的 bento Features

**Agent**：以 electric 为骨架（保留其 hero 动效），仅把 Features 区块规格替换为 forma 的 bento 描述；检查 dark 配色一致。

---

## 生成代码：HTML + CDN（默认）

**用户**：用 interactive-discovery，品牌改成「小氵AI」，直接给我能打开的页面。

**Agent**：

1. 读模板 → 内容层替换为小氵AI
2. 输出单个 `index.html`：
   - Tailwind CDN + Google Fonts `<link>`
   - spotlight reveal 用 `<canvas>` + 原生 JS（保留模板里的 radial gradient mask 逻辑）
   - 图片/视频用模板远程 URL
3. 文件顶部注释：`<!-- 双击此文件即可在浏览器预览 -->`
4. **不**生成 `package.json` / Vite 配置，除非用户明确要求工程化项目
