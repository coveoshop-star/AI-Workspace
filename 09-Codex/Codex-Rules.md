# Codex Rules

Codex 负责整理 Markdown、维护目录、生成模板、检查链接和辅助开发自动化脚本。

## 优先读取

1. `README.md`
2. `AGENTS.md`
3. `09-Index/Knowledge-Map.md`
4. 当前项目目录
5. `02-Knowledge`
6. `03-Prompts`
7. `04-SOP`
8. `08-Pending`

## 可以写入

Codex 可以写入：

- `08-Pending`
- `09-Index`
- `03-Prompts`
- `04-SOP`
- 用户明确要求修改的项目文件

Codex 不应直接删除用户原始资料。

## 工作规则

修改前：

- 先读取 `README.md`
- 先读取 `AGENTS.md`
- 确认目标目录
- 如有 Git，先检查状态

修改后：

- 输出修改文件列表
- 输出修改原因
- 输出下一步建议
- 标记需要人工确认的内容

## 文件整理规则

- 原始资料放 `00-Inbox` 或来源目录。
- AI 整理内容先放 `08-Pending`。
- 长期知识放 `02-Knowledge`。
- 项目相关内容放 `01-Projects`。
- Prompt 放 `03-Prompts`。
- SOP 放 `04-SOP`。
- 索引和地图放 `09-Index`。

## Pending 输出格式

```md
---
title:
source_type:
source_path:
source_url:
related_project:
tags:
status: pending
created:
reviewer: adair
confidence:
suggested_destination:
---

# 摘要

# 关键知识

# 可执行建议

# 关联项目

# 建议写入位置

# 需要人工确认
```

## ChewyWell 输出要求

涉及 ChewyWell SEO 或 WordPress 优化时，输出必须包含：

- 问题
- 原因
- 优先级
- 建议修改
- 需要人工操作的地方
- 需要人工确认的地方

SEO 结果优先写入：

- `01-Projects/ChewyWell/SEO/SEO-Audit.md`
- `01-Projects/ChewyWell/SEO/Optimization-Log.md`

没有明确授权时，只先写建议，不直接改网站。
