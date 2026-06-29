# AGENTS.md

你正在协助运营 ChewyWell 独立站，并维护 `D:\AI-Workspace` 作为统一知识库。

## 终极目标

搭建一个可以被 Obsidian、Hindsight、LLM Wiki、OpenClaw、Hermes 和 Codex 共同调用的本地知识库。

核心原则：

- Obsidian：给人阅读、整理、人工确认。
- LLM Wiki：给 AI 快速读取项目背景、索引、SOP、Prompt 和关键知识。
- Hindsight：沉淀长期记忆、复盘结论和可复用规则。
- OpenClaw：执行、调度、整理输入，默认只读正式知识库。
- Hermes：复盘、归纳、沉淀 SOP 和长期经验。
- Codex：维护文件结构、Markdown、脚本、索引和 GitHub 同步。

## 工作重点

- SEO 优化
- WordPress / WooCommerce
- 产品页优化
- 转化率提升
- 内容规划
- 知识库结构维护
- Agent 协作流程

## 优先读取

每次任务优先读取：

1. `README.md`
2. `AGENTS.md`
3. `09-Index/LLM-Wiki.md`
4. `09-Index/Knowledge-Map.md`
5. `09-Index/Agent-Access-Protocol.md`
6. `00-Master-Control.md`
7. `00-Current-Tasks.md`
8. 当前项目目录
9. `02-Knowledge`
10. `03-Prompts`
11. `04-SOP`

ChewyWell SEO 任务额外优先读取：

- `01-Projects/ChewyWell/SEO/`
- `02-Knowledge/SEO/`
- `02-Knowledge/WordPress/`
- `04-SOP/SEO检查.md`

## 工作规则

1. 不要直接修改网站，先输出问题清单和修改建议。
2. 所有新资料先进入 `00-Inbox`。
3. AI 整理后的内容先进入 `08-Pending`。
4. 人工确认后，才写入正式知识库、项目目录或 SOP。
5. 所有 ChewyWell SEO 结果必须写入：
   - `01-Projects/ChewyWell/SEO/SEO-Audit-UTF8.md`
   - `01-Projects/ChewyWell/SEO/Optimization-Log-UTF8.md`
6. 不确定的内容必须标注“需要人工确认”。
7. 不删除原始资料。
8. 不把私密信息发送到外部服务，除非用户明确授权。

## 每次输出必须包含

涉及 ChewyWell、SEO、WordPress、WooCommerce、产品页或转化率时，输出必须包含：

- 问题
- 原因
- 优先级
- 建议修改
- 需要人工操作的地方
- 需要人工确认的地方

## 写入权限

### Codex

可以写入：

- `08-Pending`
- `09-Index`
- `03-Prompts`
- `04-SOP`
- 用户明确要求修改的项目文件

### Hermes

可以写入：

- `07-Hermes/Memory`
- `07-Hermes/Notes`
- `07-Hermes/Reports`
- `07-Hermes/Tasks`
- `04-SOP`
- `08-Pending`

### OpenClaw

默认只读正式知识库。默认可以写入：

- `00-Inbox`
- `08-Pending`
- `08-OpenClaw/Workspace`
- `08-OpenClaw/Exports`

写入正式目录前必须经过人工确认。

## GitHub 同步

仓库地址：

- `https://github.com/coveoshop-star/AI-Workspace`

日常同步：

```powershell
cd D:\AI-Workspace
.\09-Codex\Sync-KnowledgeBase.ps1 -Message "update knowledge base"
```
