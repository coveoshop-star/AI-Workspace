# Pending 审核区

这里存放 AI 已经整理、但还没有人工确认的内容。

## 为什么需要 Pending

不要让任何 Agent 直接写入正式知识库。Pending 区用于防止：

- AI 总结错误
- 重复内容污染知识库
- 无来源内容进入长期知识
- 多个 Agent 同时修改正式文件

## 审核标准

每篇 Pending 内容审核时检查：

1. 是否有明确来源
2. 是否与当前项目有关
3. 是否有长期保存价值
4. 是否有可执行建议
5. 是否存在未经核实的信息
6. 应该写入哪个正式目录

## 审核结果

- `approve`：移动到正式知识库或项目目录
- `revise`：要求 AI 重新整理
- `archive`：价值不高，放入归档
- `delete-later`：暂不保留，但不要立即删除原始资料

## 推荐去向

- 项目任务：`01-Projects`
- 长期知识：`02-Knowledge`
- SOP 流程：`04-SOP`
- Prompt：`03-Prompts`
- Hermes 经验：`07-Hermes`
- OpenClaw 规则：`08-OpenClaw`
- 索引：`09-Index`
