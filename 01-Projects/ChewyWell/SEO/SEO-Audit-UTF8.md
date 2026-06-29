# ChewyWell SEO Audit

此文件是 ChewyWell SEO 审核的 UTF-8 Markdown 版本，供 AI Knowledge OS、Codex、Hermes、OpenClaw 后续稳定读写。

旧文件 `SEO-Audit.md` 保留不动；后续 AI 流程优先写入本文件。

## 使用规则

- 每条审核记录必须包含：问题、原因、优先级、建议修改、需要人工操作、需要人工确认。
- 不确定的信息必须标记为“需要人工确认”。
- 不直接修改网站，只记录问题和建议。

## 审核记录

### 2026-06-29｜ChewyWell 首页 SEO 流程测试

来源：`08-Pending/2026-06-29-chewywell-homepage-seo-test.md`
状态：测试样例已通过
优先级：P1

#### 问题

当前需要建立 ChewyWell 首页 SEO 检查流程，优先检查 Title、Meta Description、H1、Hero 文案、Trust Badges、Newsletter 入口。

#### 原因

这些内容会影响搜索展示、页面主题清晰度和首页转化率，是当前 ChewyWell SEO 体检的 P1 内容。

#### 建议修改

1. 使用 `04-SOP/SEO检查.md` 检查首页 Title、Meta Description、H1。
2. 记录当前首页 Title、Meta Description、H1。
3. 生成 3 套首页 Title / Meta / H1 候选。
4. 人工确认后再进入 WordPress 修改。

#### 需要人工操作

- 确认 ChewyWell 首页 URL。
- 提供当前首页 Title、Meta Description、H1。
- 确认是否允许 AI 生成首页 SEO 改写版本。

#### 需要人工确认

- 当前首页真实 SEO 数据。
- 是否以本记录作为后续 ChewyWell SEO 审核的标准格式。

---

### 2026-06-29｜Codex 导出包与 SEO 工作区检查

来源：`C:\Users\adair\Documents\Codex\2026-06-29\https-chatgpt-com-share-6a4276f1-1dd0`
状态：已检查导出包与当前工作区
优先级：P1

#### 问题

当前工作区已导入 ChewyWell 首页 SEO、产品页 FAQ、产品页 SEO SOP、Pending 模板等资料，但 `SEO-Audit-UTF8.md` 和 `Optimization-Log-UTF8.md` 中曾混入重复的乱码记录。

#### 原因

导出包和旧项目文件中存在 RTF / 编码不一致痕迹，继续追加中文 Markdown 时容易产生乱码，影响后续 SEO 审核、复盘和自动化读取。

#### 建议修改

1. 后续 SEO 结果优先写入 `SEO-Audit-UTF8.md` 和 `Optimization-Log-UTF8.md`。
2. 旧版 `SEO-Audit.md`、`Optimization-Log.md` 保留作历史归档，不再作为 AI 追加入口。
3. 使用 `00-Inbox/_Templates/` 填写真实首页或产品页数据，再生成 Pending 审核稿。
4. 人工审核后，再把确认内容写入 ChewyWell SEO 项目文件。

#### 需要人工操作

- 提供 ChewyWell 首页真实 URL、Title、Meta Description、H1。
- 选择 3-5 个优先优化的产品页。
- 确认是否把旧 `.md` 乱码文件迁移为干净 UTF-8 归档版本。

#### 需要人工确认

- 导出包内所有脚本是否还需要继续保留。
- 旧 SEO 文件是否只作为历史备份，不再用于日常写入。
