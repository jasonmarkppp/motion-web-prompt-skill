# motion-web-prompt-skill

328 条 AI 动效网页设计 Prompt 模板 + Cursor Agent Skill。

## 安装 Skill

```bash
git clone https://github.com/jasonmarkppp/motion-web-prompt-skill.git
cp -r motion-web-prompt-skill/.cursor/skills/motion-web-design ~/.cursor/skills/
```

或在项目内：

```bash
mkdir -p .cursor/skills
cp -r motion-web-prompt-skill/.cursor/skills/motion-web-design .cursor/skills/
# 把 prompts 放到工作区根目录，Agent 才能读到
cp -r motion-web-prompt-skill/prompts ./prompts
cp motion-web-prompt-skill/catalog.json ./catalog.json
```

## Cursor 里怎么用

```
用 motion-web-design，套 dreamcore-landing 模板
```

```
@motion-web-design 以 interactive-discovery 为底，改成我的品牌，其余不动
```

Skill 会读 `RULES.md`：支持**直接套模板**和**套模板 + 微调**。

## 目录

| 路径 | 说明 |
|------|------|
| `.cursor/skills/motion-web-design/SKILL.md` | Skill 入口 |
| `.cursor/skills/motion-web-design/RULES.md` | Agent 规则（必读） |
| `catalog.json` | 328 条索引 |
| `prompts/*.md` | 单条 Prompt |
| `data/all-prompts.json` | 全文 JSON |

## 分类

- **WEB** 311 条 · **APP** 17 条

## 更新数据（维护者）

本地维护者若有 `source/` 快照目录，可运行：

```bash
node scripts/import-from-source.mjs
```

`source/` 不随本仓库分发。

## 免责声明

模板仅供学习与个人项目参考。与任何第三方商业产品无关联。
