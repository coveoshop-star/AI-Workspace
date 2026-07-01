# LLM Wiki

这是 `AI-Workspace` 给 LLM / Agent 读取的总入口。任何 AI 工具进入知识库时，优先读取本文件。

## 当前目标

搭建一个统一知识库，让以下工具共享同一套资料、规则和上下文：

- Obsidian：人工阅读和整理
- Hindsight：长期记忆和复盘规则
- LLM Wiki：AI 可读索引
- OpenClaw：执行与调度
- Hermes：复盘与 SOP 沉淀
- Codex：文件、脚本、GitHub、Markdown 维护

## 最小读取集

每个 Agent 最少读取：

1. `README.md`
2. `AGENTS.md`
3. `09-Index/LLM-Wiki.md`
4. `09-Index/Knowledge-Map.md`
5. `09-Index/Agent-Access-Protocol.md`

## 项目入口

### ChewyWell

- 项目目录：`01-Projects/ChewyWell`
- SEO 目录：`01-Projects/ChewyWell/SEO`
- SEO 审核：`01-Projects/ChewyWell/SEO/SEO-Audit-UTF8.md`
- 优化日志：`01-Projects/ChewyWell/SEO/Optimization-Log-UTF8.md`
- 关键词研究：`01-Projects/ChewyWell/SEO/Keyword-Research.md`
- 内容计划：`01-Projects/ChewyWell/SEO/Content-Plan.md`

### Knowledge

- SEO：`02-Knowledge/SEO`
- WordPress：`02-Knowledge/WordPress`
- AI：`02-Knowledge/AI`

### Prompts

- SEO：`03-Prompts/SEO`
- Product：`03-Prompts/Product`
- Customer Service：`03-Prompts/Customer-Service`
- Agent Router：`03-Prompts/Agents/AI-Workspace-Router-Prompt.md`

### SOP

- Git 同步：`04-SOP/Git-KnowledgeBase-Sync-SOP.md`
- SEO 检查：`04-SOP/SEO检查.md`
- 产品页 SEO：`04-SOP/ChewyWell-Product-Page-SEO-SOP.md`
- 飞书知识导入：`04-SOP/Feishu-Knowledge-Agent-Inbox-SOP.md`
- 飞书 OpenClaw 连通性测试：`04-SOP/Feishu-OpenClaw-Connectivity-Test.md`
- OpenClaw 路径桥接：`04-SOP/OpenClaw-Path-Bridge-SOP.md`
- 视频链接入库：`04-SOP/Video-Link-Inbox-SOP.md`

## Agent 分工

### OpenClaw

用途：资料接收、任务调度、初步整理、生成 Pending。

默认读：

- `09-Index/LLM-Wiki.md`
- `09-Index/Agent-Access-Protocol.md`
- `08-OpenClaw/OpenClaw-Rules.md`
- 当前任务相关目录

默认写：

- `00-Inbox`
- `08-Pending`
- `08-OpenClaw/Workspace`
- `08-OpenClaw/Exports`

### Hermes

用途：复盘、长期记忆、SOP 沉淀、Hindsight 候选。

默认读：

- `09-Index/LLM-Wiki.md`
- `07-Hermes/Hermes-Rules.md`
- `04-SOP`
- 当前项目目录

默认写：

- `07-Hermes/Memory`
- `07-Hermes/Notes`
- `07-Hermes/Reports`
- `07-Hermes/Tasks`
- `08-Pending`

### Codex

用途：维护结构、脚本、索引、GitHub 同步、Markdown 清理。

默认读：

- `09-Index/LLM-Wiki.md`
- `09-Index/Knowledge-Map.md`
- `09-Index/Agent-Access-Protocol.md`

默认写：

- `09-Index`
- `04-SOP`
- `03-Prompts`
- `08-Pending`
- 用户明确授权的项目文件

## 入库流程

```text
资料输入
  -> 00-Inbox
  -> OpenClaw 初步整理
  -> 08-Pending
  -> 人工审核
  -> 02-Knowledge / 01-Projects / 04-SOP
  -> Hermes 复盘
  -> 07-Hermes/Memory/Hindsight-Queue.md
  -> 人工确认
  -> 07-Hermes/Memory/Hindsight-Memory.md
```

## 状态标签

- `pending`：待审核
- `approved`：已确认
- `needs-confirmation`：需要人工确认
- `archived`：已归档
- `active`：当前有效

## 安全规则

- 不直接修改网站后台。
- 不把未经确认的信息写成事实。
- 不把私密信息发送到外部服务。
- 不删除原始资料。
- 不绕过 `08-Pending` 审核流程。
