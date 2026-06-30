---
source: feishu
channel: feishu
chat_type: direct
sender_id: [redacted-feishu-open-id]
sender_label: [redacted-feishu-open-id]
message_id: [redacted-feishu-message-id]
inbound_timestamp_utc: 2026-06-29T23:57:30Z
inbound_date_local: 2026-06-30
project: AI Workspace
tags: [feishu, openclaw, connectivity-test]
status: raw-inbox
agent: knowledge (minimax/MiniMax-M3)
captured_by: openclaw/feishu-bridge
captured_at_utc: 2026-06-29T23:57:35Z
---

# 2026-06-30 feishu-openclaw connectivity test (raw inbox)

## 原始消息

> **[AI Workspace Connectivity Test]**
>
> 日期:2026-06-30
> 目标:测试飞书 Knowledge Agent 是否能把资料写入 AI Workspace。
> 项目:AI Workspace
> 标签:feishu, openclaw, connectivity-test
>
> 请将这条消息作为原始资料写入:
> `D:\AI-Workspace\00-Inbox\2026-06-30-feishu-openclaw-connectivity-test.md`
>
> 然后生成 Pending 审核稿:
> `D:\AI-Workspace\08-Pending\2026-06-30-feishu-openclaw-connectivity-test-review.md`
>
> 请不要写入正式知识库。
> 不确定内容请标记"需要人工确认"。

## 元数据

- **来源渠道**:飞书 / direct message
- **发送方 open_id**: `[redacted-feishu-open-id]`
- **消息 ID**: `[redacted-feishu-message-id]`
- **到达时间(UTC)**: 2026-06-29 23:57:30
- **当地日期(发送方声明)**: 2026-06-30
- **意图**:连通性测试,验证 Feishu → OpenClaw → D:\AI-Workspace 写入链路是否打通。
- **禁写区**:正式知识库(本 inbox 文件已严格规避)

## 备注

- 该消息在 OpenClaw 侧由 `knowledge` agent 处理,模型 `minimax/MiniMax-M3`。
- 目标路径 `D:\` 在 WSL 内通过 9p/drvfs 挂载于 `/home/node/.openclaw/`,本次写入使用该映射路径。
- 本文件为"原始资料",未经任何归纳、分类或编辑加工。

