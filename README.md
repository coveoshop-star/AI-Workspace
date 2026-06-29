# AI Workspace

这是统一的本地知识中台。Obsidian、飞书 Knowledge Agent、OpenClaw、Hermes 和 Codex 都围绕这个目录协作。

## 当前重点

- ChewyWell WordPress 独立站
- SEO 与内容规划
- 产品页和转化率优化
- OpenClaw 自动化
- Hermes 复盘与 SOP
- Codex Markdown 整理
- 跨境电商和业务知识沉淀

## 目录规则

- `00-Inbox`：所有新资料的入口，包含网页、PDF、截图、聊天记录、想法。
- `01-Projects`：正在执行的项目。
- `02-Knowledge`：长期知识和人工整理笔记。
- `03-Prompts`：提示词、角色设定、工作流。
- `04-SOP`：标准操作流程。
- `07-Hermes`：Hermes 相关复盘和经验沉淀。
- `08-OpenClaw`：OpenClaw 规则、配置和任务说明。
- `08-Pending`：AI 整理后的待审核内容。
- `09-Index`：知识地图、索引、标签。
- `13-Archive`：归档资料。

## 使用规则

1. 所有原始资料先进入 `00-Inbox`。
2. AI 整理后的内容先进入 `08-Pending`。
3. 人工确认后，才移动到正式知识库或项目目录。
4. 不确定的信息必须标记为“需要人工确认”。
5. 不删除原始资料。
6. OpenClaw 默认只读，除非用户明确授权写入。
7. Codex 修改文件后必须说明修改了什么、为什么修改。
8. Hermes 负责复盘、SOP 和经验沉淀。

## 推荐工作流

```text
资料输入
  ↓
00-Inbox
  ↓
AI 整理
  ↓
08-Pending
  ↓
人工审核
  ↓
02-Knowledge / 01-Projects / 04-SOP
  ↓
OpenClaw / Hermes / Codex 调用
```

## 每日动作

1. 把新资料发给飞书 Knowledge Agent，或手动放入 `00-Inbox`。
2. 晚上检查 `08-Pending`。
3. 确认高价值内容进入正式知识库。
4. 把项目相关行动项写入 `00-Current-Tasks.md` 或项目目录。

## GitHub 备份

当前仓库已同步到：

- `https://github.com/coveoshop-star/AI-Workspace`

日常同步推荐使用：

```powershell
cd D:\AI-Workspace
.\09-Codex\Sync-KnowledgeBase.ps1 -Message "update knowledge base"
```

详细流程见：

- `04-SOP/Git-KnowledgeBase-Sync-SOP.md`
