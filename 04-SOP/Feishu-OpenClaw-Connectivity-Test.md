# Feishu OpenClaw Connectivity Test

## 目标

确认飞书 Knowledge Agent 是否可以把原始资料交给 OpenClaw，并进入 `D:\AI-Workspace` 知识库流程。

## 测试结论规则

只有同时满足以下 3 点，才算“已打通”：

1. 飞书机器人收到测试消息后有明确回复。
2. 本地 `00-Inbox` 出现对应测试文件。
3. 本地 `08-Pending` 或 `08-OpenClaw/Workspace` 出现整理记录或执行记录。

如果只满足第 1 点，说明飞书机器人在线，但不一定接入本地知识库。

如果满足第 1 点和第 2 点，说明资料入口已打通，但整理流程还需要确认。

如果 3 点都满足，说明飞书 -> OpenClaw -> AI Workspace 的最小链路已打通。

## 测试消息

把下面内容发给飞书 Knowledge Agent：

```text
[AI Workspace Connectivity Test]

日期：2026-06-30
目标：测试飞书 Knowledge Agent 是否能把资料写入 AI Workspace。
项目：AI Workspace
标签：feishu, openclaw, connectivity-test

请将这条消息作为原始资料写入：
D:\AI-Workspace\00-Inbox\2026-06-30-feishu-openclaw-connectivity-test.md

然后生成 Pending 审核稿：
D:\AI-Workspace\08-Pending\2026-06-30-feishu-openclaw-connectivity-test-review.md

请不要写入正式知识库。
不确定内容请标记“需要人工确认”。
```

## 预期 Inbox 文件

文件路径：

```text
D:\AI-Workspace\00-Inbox\2026-06-30-feishu-openclaw-connectivity-test.md
```

文件内容至少包含：

- 测试日期
- 来源：飞书 Knowledge Agent
- 目标：测试飞书到 OpenClaw 的知识库链路
- 状态：原始资料
- 需要人工确认

## 预期 Pending 文件

文件路径：

```text
D:\AI-Workspace\08-Pending\2026-06-30-feishu-openclaw-connectivity-test-review.md
```

文件内容至少包含：

- 摘要
- 关键知识
- 可执行建议
- 关联项目
- 建议写入位置
- 需要人工确认

## 人工检查命令

在 PowerShell 中运行：

```powershell
cd D:\AI-Workspace
Test-Path .\00-Inbox\2026-06-30-feishu-openclaw-connectivity-test.md
Test-Path .\08-Pending\2026-06-30-feishu-openclaw-connectivity-test-review.md
```

如果两个结果都是 `True`，说明最小链路基本打通。

## OpenClaw 回复模板

机器人理想回复：

```text
已收到测试资料。

状态：已进入 00-Inbox
Inbox 文件：00-Inbox/2026-06-30-feishu-openclaw-connectivity-test.md
Pending 文件：08-Pending/2026-06-30-feishu-openclaw-connectivity-test-review.md
下一步：等待人工确认
```

## 如果失败

### 飞书有回复，但本地没有文件

问题：机器人在线，但没有写入本地 AI Workspace。

建议检查：

- 飞书机器人是否有本地文件写入能力。
- OpenClaw 是否在运行。
- OpenClaw 的工作目录是否是 `D:\AI-Workspace`。
- 是否需要通过 webhook / API / 同步脚本把飞书消息转成本地文件。

### Inbox 有文件，但 Pending 没有文件

问题：资料入口已打通，但整理流程没有自动执行。

建议检查：

- OpenClaw 是否读取 `08-OpenClaw/Agents/KnowledgeBase-Agent.md`。
- 是否配置了 Pending 生成任务。
- 是否需要手动触发整理。

### 两个文件都有

结论：飞书 -> OpenClaw -> AI Workspace 最小链路已打通。

下一步：

- 用真实 ChewyWell SEO 资料测试。
- 让 Hermes 生成复盘。
- 将确认后的内容写入正式知识库。
