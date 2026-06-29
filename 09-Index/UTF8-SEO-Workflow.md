# UTF-8 SEO Workflow

此文件记录 ChewyWell SEO 后续稳定写入规则。

## 背景

旧文件：

- `01-Projects/ChewyWell/SEO/SEO-Audit.md`
- `01-Projects/ChewyWell/SEO/Optimization-Log.md`

这两个文件存在 RTF 风格内容，不适合继续追加中文 Markdown。后续 AI 流程优先写入新的 UTF-8 文件：

- `01-Projects/ChewyWell/SEO/SEO-Audit-UTF8.md`
- `01-Projects/ChewyWell/SEO/Optimization-Log-UTF8.md`

旧文件保留，不删除，不覆盖。

## 新流程

```text
00-Inbox
  ↓
08-Pending
  ↓
人工审核 approve
  ↓
SEO-Audit-UTF8.md
Optimization-Log-UTF8.md
  ↓
13-Archive/Pending-Approved
```

## 入库规则

Pending 审核通过后：

1. 将 SEO 问题、原因、优先级、建议修改写入 `SEO-Audit-UTF8.md`。
2. 将动作、状态、结果、下一步写入 `Optimization-Log-UTF8.md`。
3. 将 Pending 文件复制到 `13-Archive/Pending-Approved/YYYY-MM-DD/`。
4. 不删除原 Pending，除非用户明确要求。

## 首页 SEO 实战顺序

1. 填写 `00-Inbox/_Templates/ChewyWell-Homepage-SEO-Data-Template.md`。
2. 使用 `03-Prompts/SEO/ChewyWell-Homepage-SEO-Prompt.md` 生成 Pending 审核稿。
3. 人工审核。
4. 审核通过后写入 UTF-8 SEO 文件。
5. 再决定是否进入 WordPress 后台修改。
