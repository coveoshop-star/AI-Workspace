# 飞书 Knowledge Agent 入库 SOP

## 目标

让飞书 Knowledge Agent 成为知识入口。所有资料先进入 `00-Inbox`，不要直接进入正式知识库。

## 入口规则

飞书收到以下内容时，都先生成或保存到 `00-Inbox`：

- 网页链接
- PDF
- 截图
- ChatGPT 对话
- 微信 / 邮件内容
- GitHub 链接
- YouTube / 视频链接
- 手动想法

## 命名规则

```text
YYYY-MM-DD-source-topic.md
YYYY-MM-DD-source-topic.pdf
YYYY-MM-DD-source-topic.png
```

示例：

```text
2026-06-29-feishu-chewywell-homepage-seo.md
2026-06-29-youtube-wordpress-seo.md
2026-06-29-pdf-google-seo-guide.pdf
```

## 处理流程

```text
飞书收到资料
  ↓
写入 00-Inbox
  ↓
AI 初步整理
  ↓
写入 08-Pending
  ↓
每日人工审核
  ↓
正式入库
```

## 飞书 Agent 回复模板

```text
已收到资料。

状态：已进入 00-Inbox
文件名：
关联项目：
下一步：等待 AI 整理为 Pending 审核稿
```

## 不允许

- 不直接写入 `02-Knowledge`。
- 不直接写入项目正式文件。
- 不删除原始资料。
- 不把未经确认的信息标记为事实。

## ChewyWell SEO 特例

如果资料与 ChewyWell SEO、WordPress、产品页、转化率有关，优先关联：

- `01-Projects/ChewyWell`
- `01-Projects/ChewyWell/SEO`
- `02-Knowledge/SEO`
- `02-Knowledge/WordPress`
- `04-SOP/SEO检查.md`
