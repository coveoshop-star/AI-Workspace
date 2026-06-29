# Agent Access Protocol

## 目标

让 Obsidian、Hindsight、LLM Wiki、OpenClaw、Hermes 和 Codex 使用同一套知识库入口、读写边界和审核流程。

## 目录角色

| 目录 | 角色 | 谁主要使用 |
| --- | --- | --- |
| `00-Inbox` | 原始资料入口 | OpenClaw, Codex |
| `08-Pending` | AI 整理后的待审核区 | OpenClaw, Hermes, Codex |
| `02-Knowledge` | 长期正式知识 | Obsidian, LLM Wiki, Hermes |
| `01-Projects` | 项目执行资料 | OpenClaw, Hermes, Codex |
| `03-Prompts` | Prompt 和角色模板 | Codex, OpenClaw |
| `04-SOP` | 标准流程 | Obsidian, Hermes, Codex |
| `07-Hermes` | 复盘和长期记忆 | Hermes, Hindsight |
| `08-OpenClaw` | 执行工作区 | OpenClaw |
| `09-Index` | 索引和 LLM Wiki | 全部工具 |

## 读取协议

所有 Agent 先读：

1. `README.md`
2. `AGENTS.md`
3. `09-Index/LLM-Wiki.md`
4. `09-Index/Knowledge-Map.md`
5. 本工具自己的规则文件

工具规则文件：

- Codex：`09-Codex/Codex-Rules.md`
- Hermes：`07-Hermes/Hermes-Rules.md`
- OpenClaw：`08-OpenClaw/OpenClaw-Rules.md`

## 写入协议

### 可以直接写入

- 新资料：`00-Inbox`
- AI 草稿：`08-Pending`
- 索引、SOP、Prompt：由 Codex 或 Hermes 根据任务写入
- 工具工作区：对应工具自己的目录

### 需要人工确认后写入

- `01-Projects`
- `02-Knowledge`
- `04-SOP` 的关键规则修改
- `07-Hermes/Memory/Hindsight-Memory.md`

### 禁止默认写入

- 网站后台
- 外部系统
- 未授权的远程服务
- 未经确认的正式知识条目

## Hindsight 规则

Hindsight 分两层：

1. 候选记忆：`07-Hermes/Memory/Hindsight-Queue.md`
2. 已确认记忆：`07-Hermes/Memory/Hindsight-Memory.md`

所有候选记忆必须包含：

- type：fact / observation / rule
- project
- content
- source
- confidence
- status
- created

只有人工确认后，才能从 Queue 进入 Memory。

## LLM Wiki 规则

`09-Index/LLM-Wiki.md` 只保存入口、索引、当前有效规则和最小上下文，不放长篇原文。

LLM 需要详细资料时，再按索引读取对应文件。

## Obsidian 使用方式

推荐直接用 Obsidian 打开：

- `D:\AI-Workspace`

不要把 `D:\AI-Workspace\obsidian` 当作正式知识库入口；该目录用于本机 Obsidian 程序和旧测试 vault，已被 `.gitignore` 忽略。

## GitHub 同步

每次完成可保存的修改后运行：

```powershell
cd D:\AI-Workspace
.\09-Codex\Sync-KnowledgeBase.ps1 -Message "update knowledge base"
```
