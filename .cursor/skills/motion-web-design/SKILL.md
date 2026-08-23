---
name: motion-web-design
description: 动效网页 Prompt 模板库 Skill。328 条 WEB/APP 模板，支持直接套用或按用户要求微调品牌/配色/文案/行业后输出完整 Prompt 或代码。触发：网页模板 Prompt、落地页 Prompt、motion-web-design、套模板、改模板、动效网页。
---

# motion-web-design

本 Skill 提供 **328 条结构化网页设计 Prompt 模板**，Agent 必须按 [RULES.md](RULES.md) 执行。

## 两种用法

| 模式 | 用户怎么说 | Agent 做什么 |
|------|-----------|-------------|
| **直接套模板** | 「套 XXX 模板」「原样输出」「用这个 Prompt」 | 读 `prompts/{id}.md`，原样输出或按 Prompt 写代码 |
| **套模板 + 微调** | 「以 XXX 为底，改品牌/配色/文案」「类似 XXX 但…」 | 读模板，**只改用户点名的部分**，其余布局/动效/技术栈保留 |

规则细节、保留项、禁止项 → **[RULES.md](RULES.md)**（Agent 必读）。

## 安装（GitHub）

```bash
git clone https://github.com/jasonmarkppp/motion-web-prompt-skill.git
cp -r motion-web-prompt-skill/.cursor/skills/motion-web-design ~/.cursor/skills/
```

推荐把整仓 clone 到项目旁，Agent 才能读到 `prompts/` 和 `catalog.json`：

```bash
git clone https://github.com/jasonmarkppp/motion-web-prompt-skill.git
# 在项目根目录
ln -s ../motion-web-prompt-skill/prompts ./prompts   # 或复制 prompts 目录
```

## 数据文件

| 文件 | 说明 |
|------|------|
| `catalog.json` | 328 条索引（id / title / category / platform） |
| `prompts/{id}.md` | 单条完整 Prompt |
| `data/all-prompts.json` | 全文 JSON 备份 |

路径解析顺序见 [RULES.md#路径解析](RULES.md#路径解析)。

## 调用示例

```
用 motion-web-design，套 dreamcore-landing 模板
```

```
@motion-web-design 以 interactive-discovery 为底，品牌改成 XX，配色改蓝色，其余不动
```

```
用 motion-web-design 找一个 WEB 类的 Portfolio 模板，推荐 3 条
```

## 分类

- **WEB**（platform=website）：311 条
- **APP**（platform=app）：17 条

## 附加资源

- Agent 规则：[RULES.md](RULES.md)
- 案例：[examples.md](examples.md)
