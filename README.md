# motion-web-design

**328 条 AI 动效网页设计模板** + Cursor / Claude Code 等 Agent 可直接调用的 Skill。

选好一个模板，**动效、布局、CSS 不动**，把你的品牌名、文案、配色换上去，就能生成落地页、Hero 区块、产品页——不用从零写 Prompt，也不用自己琢磨 parallax、光斑揭示、滚动动效怎么实现。

---

## 你能用它做什么

- 快速出 **落地页 / Hero / 产品页** 的完整 Prompt 或直接生成代码
- **保留模板 signature 动效**（光斑揭示、视差滚动、玻璃拟态等），只换内容
- 让 Agent **从 328 条里帮你推荐** 合适风格的模板
- 生成结果默认是 **单文件 HTML**，保存后双击浏览器就能预览

**WEB** 311 条 · **APP** 17 条

---

## 安装（两步搞定）

### 方式一：让 Agent 帮你装（最简单）

打开 Cursor（或 Claude Code 等），直接说：

```
帮我安装 motion-web-design 这个 Skill
```

Agent 会自动下载并装好全部内容（规则 + 328 条模板），装完就能用。

### 方式二：自己手动装

**Windows（PowerShell）**

```powershell
git clone https://github.com/jasonmarkppp/motion-web-prompt-skill.git
cd motion-web-prompt-skill
.\scripts\install.ps1
```

**macOS / Linux**

```bash
git clone https://github.com/jasonmarkppp/motion-web-prompt-skill.git
cd motion-web-prompt-skill
bash scripts/install.sh
```

装好后重启 Cursor，或新开一个对话。

---

## 装好了怎么用

在 Agent 对话里这样说就行：

**换成自己的品牌（最常用）**

```
用 motion-web-design，以 interactive-discovery 为模板，
品牌改成「星云科技」，文案按 AI 工具站写，动效和布局别动
```

**让 Agent 帮你挑模板**

```
用 motion-web-design 找一个深色 Hero、带滚动动效的 WEB 落地页，推荐 3 个
```

**原样拿某条 Prompt**

```
用 motion-web-design，原样输出 bold-studio 的 Prompt
```

**直接生成可预览的网页**

```
用 motion-web-design，以 interactive-discovery 为模板，
品牌改成我的，生成单文件 HTML，双击能打开
```

---

## 支持哪些工具

| 工具 | 说明 |
|------|------|
| **Cursor** | 安装后自动识别，对话里直接说即可 |
| **Claude Code / Codex** | 安装到 `.agents/skills/`，详见 [COMPAT.md](.cursor/skills/motion-web-design/COMPAT.md) |
| **Bolt / Lovable / v0** | 复制模板 Prompt，按说明只改品牌与文案 |
| **ChatGPT / Claude 网页** | 粘贴模板 + 说明「动效别动，只改文案」 |

更详细的跨平台说明见 [.cursor/skills/motion-web-design/COMPAT.md](.cursor/skills/motion-web-design/COMPAT.md)。

---

## 默认工作流（Skill 会自动遵守）

1. 你选定（或 Agent 推荐）一条模板
2. **实现层保留**：动效、布局、keyframes、交互逻辑
3. **内容层替换**：品牌、标题、段落、CTA、配色（你指定的）
4. 输出完整 Prompt，或直接写代码

你没说「原样」时，Agent 会默认帮你换内容，而不是整段复制模板里的占位文案。

---

## 常见问题

**装完说找不到模板？**  
重新运行安装脚本，或让 Agent 执行「帮我安装 motion-web-design」。

**模板里的品牌名能直接改吗？**  
可以。说「以 XXX 为模板，改成我的品牌」即可。

**一定要会写代码吗？**  
不用。会跟 Agent 说话就行；若要代码，默认给可双击打开的 HTML。

**和某个商业网站有关系吗？**  
没有。模板仅供学习与个人项目参考，与任何第三方商业产品无关联。

---

## 链接

- 仓库：https://github.com/jasonmarkppp/motion-web-prompt-skill
- Skill 名：`motion-web-design`
