# ChewyWell 产品页 SEO SOP

## 目标

为 3-5 个重点产品页建立可复用的 SEO 和 FAQ 优化流程。

## 执行频率

- 新产品上架前
- 产品页修改前
- 每月 SEO 复查
- 用户问题明显增加时

## 输入

使用：

- `00-Inbox/_Templates/ChewyWell-Product-SEO-Data-Template.md`

每个产品页单独填写一份。

## 检查项

### SEO

- Title 是否唯一
- Meta Description 是否存在
- H1 是否唯一
- 关键词是否自然出现
- URL 是否清晰
- 图片 alt text 是否合理

### 转化

- 卖点是否清晰
- 成分是否清楚
- 使用方法是否清楚
- 适合人群是否清楚
- 信任信息是否清楚
- CTA 是否明显

### FAQ

至少覆盖：

1. 产品支持什么
2. 如何使用
3. 多久能感受到变化
4. 是否 vegan / gelatin-free
5. 是否适合特殊人群或需要咨询医生

## 输出

AI 先生成 Pending 审核稿：

- `08-Pending/YYYY-MM-DD-chewywell-product-[name]-faq-review.md`

人工审核通过后，再写入：

- `01-Projects/ChewyWell/SEO/SEO-Audit-UTF8.md`
- `01-Projects/ChewyWell/SEO/Optimization-Log-UTF8.md`

## 不允许

- 不直接改 WordPress。
- 不写医疗承诺。
- 不删除原始资料。
- 不把未经确认的成分信息写成事实。

## 验收标准

- 每个产品页至少有 4-6 个 FAQ。
- FAQ 回答清楚、可信、不过度承诺。
- Title / Meta / H1 有候选版本。
- 需要人工确认的地方已明确标记。
