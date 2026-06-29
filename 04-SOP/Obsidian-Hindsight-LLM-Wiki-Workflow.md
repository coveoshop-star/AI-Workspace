# Obsidian Hindsight LLM Wiki Workflow

## 目标

用 Obsidian、Hindsight、LLM Wiki、OpenClaw、Hermes 和 Codex 搭建可持续维护的个人/业务知识库。

## 工具分工

- Obsidian：人工阅读、整理、审核、链接知识。
- LLM Wiki：AI 读取入口，保存最小上下文和索引。
- Hindsight：长期记忆和可复用规则。
- OpenClaw：资料接收、初步整理、任务调度。
- Hermes：复盘、经验沉淀、SOP 生成。
- Codex：维护文件、脚本、GitHub 同步和结构清理。

## 每日流程

1. 把新资料放入 `00-Inbox`。
2. OpenClaw 初步整理，生成 `08-Pending` 草稿。
3. 人工在 Obsidian 中审核 Pending。
4. 确认后的内容进入 `02-Knowledge`、`01-Projects` 或 `04-SOP`。
5. Hermes 生成复盘，候选长期记忆进入 `07-Hermes/Memory/Hindsight-Queue.md`。
6. 人工确认后，写入 `07-Hermes/Memory/Hindsight-Memory.md`。
7. Codex 更新 `09-Index/LLM-Wiki.md` 和 GitHub 同步。

## Obsidian 设置

推荐直接用 Obsidian 打开：

```text
D:\AI-Workspace
```

这样 Obsidian 看到的就是 GitHub 同步的正式知识库。

## LLM Wiki 使用

LLM / Agent 进入知识库时，先读取：

- `09-Index/LLM-Wiki.md`
- `09-Index/Agent-Access-Protocol.md`
- `09-Index/Knowledge-Map.md`

不要一次性读取所有资料。先读索引，再按任务读取相关目录。

## Hindsight 使用

候选记忆写入：

- `07-Hermes/Memory/Hindsight-Queue.md`

确认后的长期记忆写入：

- `07-Hermes/Memory/Hindsight-Memory.md`

## GitHub 同步

每日结束前运行：

```powershell
cd D:\AI-Workspace
.\09-Codex\Sync-KnowledgeBase.ps1 -Message "update knowledge base"
```

## 验收标准

- 新资料有入口。
- AI 草稿有 Pending。
- 正式知识有来源。
- Hindsight 记忆经过确认。
- LLM Wiki 能指向关键资料。
- OpenClaw、Hermes、Codex 有明确读写边界。
