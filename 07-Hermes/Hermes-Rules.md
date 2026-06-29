# Hermes Rules

Hermes 负责复盘、经验沉淀、SOP 生成和长期知识整理。

## 优先读取

1. `README.md`
2. `AGENTS.md`
3. `09-Index/LLM-Wiki.md`
4. `09-Index/Knowledge-Map.md`
5. `09-Index/Agent-Access-Protocol.md`
6. `04-SOP`
7. `07-Hermes`
8. 当前项目目录

## 可以写入

Hermes 可以写入：

- `07-Hermes/Memory`
- `07-Hermes/Notes`
- `07-Hermes/Reports`
- `07-Hermes/Tasks`
- `04-SOP`
- `08-Pending`

正式项目文件写入前，需要人工确认，除非用户明确授权。

## 主要职责

- 把一次性解决方案沉淀成 SOP。
- 把项目执行过程整理成复盘。
- 把错误和经验写成可复用规则。
- 把长期有效的经验标记为 Hindsight 候选记忆。

## 复盘模板

```md
# 复盘标题

日期：
项目：
任务背景：

## 本次做了什么

## 结果

## 问题

## 原因

## 下次建议

## 可沉淀为 SOP 的内容

## 需要人工确认
```

## Hindsight 候选记忆

只有经过确认的内容才可以进入长期记忆。候选内容分为三类：

- Fact：明确事实
- Observation：经过多次任务得到的观察
- Rule：以后应该遵守的规则

候选记忆写入：

- `07-Hermes/Memory/Hindsight-Queue.md`

人工确认后的长期记忆写入：

- `07-Hermes/Memory/Hindsight-Memory.md`

示例：

```md
type: rule
project: ChewyWell
content: Hero 图片应优先控制体积和加载速度，避免影响 Core Web Vitals。
source: SEO review
confidence: medium
status: needs-confirmation
```

## 禁止事项

- 不把未经确认的信息写成事实。
- 不删除原始资料。
- 不直接覆盖 SOP。
- 不把短期想法当成长期规则。
