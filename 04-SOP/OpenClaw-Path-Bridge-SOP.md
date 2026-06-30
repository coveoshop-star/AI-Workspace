# OpenClaw Path Bridge SOP

## 目标

确保 OpenClaw 飞书机器人写入的资料最终进入标准知识库：

- 标准知识库：`D:\AI-Workspace`
- 当前 OpenClaw 落盘目录：`D:\DockerApps\openclaw-data\AI-Workspace`

## 当前发现

2026-06-30 连通性测试显示：

- Feishu -> OpenClaw gateway 已打通。
- OpenClaw 成功生成 `00-Inbox` 和 `08-Pending` 文件。
- 文件实际落在 `D:\DockerApps\openclaw-data\AI-Workspace`。
- Codex 当前使用的标准知识库是 `D:\AI-Workspace`。

结论：入口链路已打通，但 OpenClaw 的落盘根目录需要和标准知识库对齐。

## 推荐方案

优先方案：调整 OpenClaw 配置，让它直接写入：

```text
D:\AI-Workspace
```

临时方案：使用导入脚本把 OpenClaw 落盘内容同步到标准知识库：

```powershell
cd D:\AI-Workspace
.\09-Codex\Import-OpenClaw-Drop.ps1
```

默认会对 Markdown 中的飞书 `open_id` 和消息 ID 做脱敏。

## 隐私规则

- 不把飞书 `open_id`、消息 ID、token、secret 直接提交到 GitHub。
- 需要身份映射时，放入本地私有目录：

```text
D:\AI-Workspace\99-Private\
```

该目录已被 `.gitignore` 忽略。

## 验收标准

运行导入脚本后，标准知识库中应出现：

```text
D:\AI-Workspace\00-Inbox\...
D:\AI-Workspace\08-Pending\...
```

并且执行：

```powershell
git status --short
```

不应出现包含未脱敏 open_id 的文件。

## 后续建议

1. 确认是否可以修改 OpenClaw 的 workspace/root 配置。
2. 若可以，直接把根目录指向 `D:\AI-Workspace`。
3. 若暂时不改，保持每日或每次导入后运行 `Import-OpenClaw-Drop.ps1`。
