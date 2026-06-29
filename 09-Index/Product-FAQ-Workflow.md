# Product FAQ Workflow

此流程用于 ChewyWell 产品页 FAQ 和产品页 SEO。

## 流程

```text
产品页真实数据
  ↓
00-Inbox
  ↓
AI 生成 FAQ / SEO Pending
  ↓
08-Pending
  ↓
人工审核
  ↓
SEO-Audit-UTF8.md
Optimization-Log-UTF8.md
  ↓
WordPress 人工修改
```

## 第一步：采集数据

复制模板：

- `00-Inbox/_Templates/ChewyWell-Product-SEO-Data-Template.md`

保存为：

```text
00-Inbox/YYYY-MM-DD-chewywell-product-[name]-seo-data.md
```

## 第二步：生成 Pending

使用 Prompt：

- `03-Prompts/Product/ChewyWell-Product-FAQ-Prompt.md`

输出到：

```text
08-Pending/YYYY-MM-DD-chewywell-product-[name]-faq-review.md
```

## 第三步：审核

使用：

- `09-Index/Daily-Pending-Review.md`

审核结果：

- approve：写入 UTF-8 SEO 文件
- revise：要求重新生成
- archive：归档

## 第四步：入库

审核通过后，写入：

- `01-Projects/ChewyWell/SEO/SEO-Audit-UTF8.md`
- `01-Projects/ChewyWell/SEO/Optimization-Log-UTF8.md`

## 第五步：上站

只有人工确认后，才进入 WordPress 后台修改。

## 优先产品页

先选择 3-5 个最重要的产品页：

1.
2.
3.
4.
5.
