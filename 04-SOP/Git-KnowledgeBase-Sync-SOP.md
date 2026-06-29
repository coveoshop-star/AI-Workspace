# Git Knowledge Base Sync SOP

## 目标

把 `D:\AI-Workspace` 的本地知识库稳定同步到 GitHub 仓库：

- `https://github.com/coveoshop-star/AI-Workspace`

## 使用场景

- 新增重要知识库文件后
- 完成 ChewyWell SEO 审核或优化记录后
- 修改 SOP、Prompt、Knowledge Map 后
- 每日工作结束前

## 推荐操作

在 PowerShell 中运行：

```powershell
cd D:\AI-Workspace
.\09-Codex\Sync-KnowledgeBase.ps1 -Message "update knowledge base"
```

如果要写更具体的提交说明：

```powershell
.\09-Codex\Sync-KnowledgeBase.ps1 -Message "update ChewyWell SEO SOP"
```

## 手动操作

如果脚本不可用，可以手动执行：

```powershell
cd D:\AI-Workspace
git status
git add .
git commit -m "update knowledge base"
git push
```

## 注意事项

- 不要提交 `obsidian/` 程序目录。
- 不要提交 `.DS_Store` 或 `._*` 系统元数据文件。
- 不确定是否能公开的资料，先放入 `08-Pending` 并标记“需要人工确认”。
- 涉及网站后台修改时，必须先经过人工确认。

## 异常处理

### 没有变化

脚本会显示 `No local changes to sync.`，无需处理。

### GitHub 登录

如果弹出 GitHub 登录或授权窗口，按提示完成。

### 文件过大

如果 GitHub 拒绝超过 100MB 的文件，先确认该文件是否应该进入知识库。通常程序文件、安装包、视频和大型压缩包不应提交。
