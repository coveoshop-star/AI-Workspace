# Hindsight Queue

这里存放候选长期记忆。进入本文件不代表已经成为正式规则，必须人工确认后才能写入 `Hindsight-Memory.md`。

## 记录格式

```md
---
type: fact | observation | rule
project:
content:
source:
confidence: low | medium | high
status: needs-confirmation
created:
reviewer: adair
---
```

## 候选记忆

### 2026-06-30 | AI Workspace 工具协作规则

---
type: rule
project: AI Workspace
content: OpenClaw 默认负责执行和初步整理，Hermes 默认负责复盘和长期记忆，Codex 默认负责文件结构、脚本、索引和 GitHub 同步。
source: user goal on 2026-06-30
confidence: high
status: needs-confirmation
created: 2026-06-30
reviewer: adair
---

### 2026-06-30 | Obsidian 正式入口

---
type: rule
project: AI Workspace
content: Obsidian 推荐直接打开 `D:\AI-Workspace` 作为正式知识库入口，而不是使用被 Git 忽略的 `obsidian` 程序目录。
source: workspace integration setup
confidence: medium
status: needs-confirmation
created: 2026-06-30
reviewer: adair
---
