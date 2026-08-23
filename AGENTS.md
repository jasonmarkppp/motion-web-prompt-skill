# motion-web-prompt-skill

本仓库提供动效网页 Prompt 模板库。Agent 处理模板相关任务时：

1. 读 `.cursor/skills/motion-web-design/RULES.md`（或 `.agents/skills/motion-web-design/RULES.md`）
2. 从 `prompts/{id}.md` 读取模板
3. **默认**：保留动效/CSS/布局实现层，替换用户品牌与文案（内容层）
4. 用户明确说「原样」时才整段复制

跨平台说明：`.cursor/skills/motion-web-design/COMPAT.md`
