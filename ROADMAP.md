# AI Agent Engineer 30 天冲刺计划

> 目标：30 天内达到 AI Agent 开发入门到可做项目、可面试、可商业化 Demo 的水平
> 学习模式：项目驱动 + 高频输出 + 工程化思维
> 当前背景：8 年 Java Web 后端 / Go / Python 基础 / Vue 基础 / 架构意识 / AI Coding 工具经验

---

# 一、最终目标

30 天后达到：

## 技术目标

* 能独立开发 AI Agent Web 应用
* 理解 Tool Calling / Workflow / RAG / Memory / MCP
* 能使用 LangGraph 构建 Agent Workflow
* 能做 AI 知识库 Agent
* 能做 AI CRM 类 Agent Demo

---

## 面试目标

能回答：

* 什么是 Agent
* Function Calling 原理
* MCP 是什么
* RAG 原理
* Memory 如何设计
* Workflow 和 Agent 区别
* 如何降低幻觉
* 如何做上下文管理

---

## 商业化目标

能做：

* 企业知识库 Agent
* AI CRM Agent
* AI 客服 Agent
* AI 数据分析助手
* AI 内容生成工具

---

# 二、学习总策略（非常重要）

## 1. 不追求“全懂”

重点：

```text
先做出来
再理解原理
```

---

## 2. 项目驱动学习

学习顺序：

```text
做项目
→ 遇到问题
→ 学知识
→ 回项目验证
```

---

## 3. 每天必须输出

禁止：

```text
纯看视频不输出
```

每天至少输出：

* 一张图
* 一个 Demo
* 一段总结
* 一个 Tool
* 一个 Workflow

---

## 4. 学习优先级

只学：

* Tool Calling
* Workflow
* Memory
* RAG
* MCP

暂时不学：

* Transformer 数学
* 模型训练
* CUDA
* LoRA
* Diffusion

---

# 三、推荐技术栈

| 模块              | 技术         |
| --------------- | ---------- |
| Agent Framework | LangGraph  |
| LLM SDK         | OpenAI SDK |
| Backend         | FastAPI    |
| Frontend        | Vue        |
| Vector DB       | Chroma     |
| Database        | PostgreSQL |
| Runtime（后期）     | Go         |
| MCP             | MCP SDK    |

---

# 四、30 天学习路线

---

# 第一阶段（Day 1~7）

# 目标：

做出第一个可调用工具的 Agent

---

## Day 1

### 学习内容

理解：

* 什么是 Agent
* Function Calling
* Tool Calling
* Agent Loop

---

### 重点认知

```text
Agent ≠ Prompt
```

真正的 Agent：

```text
LLM + Tool + Workflow + Memory
```

---

### 输出

完成：

# 《AI Agent 技术地图》

必须包含：

* LLM
* Tool
* Workflow
* Memory
* RAG
* MCP

---

## Day 2

### 学习内容

理解：

* Function Calling
* Tool Schema
* Structured Output

---

### 实战

实现：

```python
get_weather(city)
```

让模型调用工具。

---

### 输出

总结：

```text
为什么模型知道调用工具？
```

---

## Day 3

### 实战

新增：

* 时间工具
* 数学工具
* 文件读取工具

---

### 重点认知

```text
LLM 不会做事
Tool 才能做事
```

---

## Day 4

### 学习

理解：

* ReAct
* Agent Loop

---

### 实战

实现：

```text
Agent 自动选择 Tool
```

---

## Day 5

### 学习

理解：

* 短期记忆
* 长期记忆
* Conversation State

---

### 实战

实现：

```text
多轮对话记忆
```

---

## Day 6~7（周末）

# 项目 1

# AI Assistant MVP

---

### 功能

* 聊天
* Tool Calling
* Memory
* Streaming

---

### 技术

Backend：

```text
FastAPI
```

Frontend：

```text
Vue
```

---

# 第二阶段（Day 8~15）

# 目标：

掌握 Workflow

---

## Day 8

安装：

* LangGraph
* LangSmith

跑官方 Demo。

---

## Day 9

### 学习

理解：

# StateGraph

重点：

```text
Agent 本质越来越像状态机
```

---

## Day 10

### 实战

实现：

```text
Tool Node
```

---

## Day 11

### 实战

实现：

```text
Conditional Routing
```

---

## Day 12

### 实战

实现：

```text
多步骤任务
```

例如：

```text
查天气
→ 总结
→ 生成日报
```

---

## Day 13~15（周末）

# 项目 2

# Workflow Agent

支持：

* 多工具
* 多步骤
* 条件路由

---

# 第三阶段（Day 16~23）

# 目标：

掌握 RAG

---

## Day 16

### 学习

理解：

* Embedding
* Vector DB
* Chunk
* Retrieval

---

## Day 17

### 实战

接入：

```text
ChromaDB
```

---

## Day 18

### 实战

实现：

```text
PDF 上传
```

---

## Day 19

### 实战

实现：

```text
文档切片
```

---

## Day 20

### 实战

实现：

```text
RAG 问答
```

---

## Day 21~23（周末）

# 项目 3

# AI 知识库 Agent

功能：

* 上传文档
* 检索
* 问答
* 多轮记忆
* 引用来源

---

# 第四阶段（Day 24~30）

# 目标：

商业化 Agent

---

# 推荐方向（重点）

# AI CRM Agent

结合你的行业经验。

---

## Day 24

设计：

```text
CRM Tool
```

例如：

* 查询客户
* 查询订单
* 查询活动

---

## Day 25

设计：

```text
Workflow
```

---

## Day 26

接入：

```text
真实业务数据
```

---

## Day 27

实现：

```text
Dashboard
```

---

## Day 28

学习：

# MCP

重点理解：

* MCP Server
* MCP Client
* Tool Protocol

---

## Day 29

实现：

# 自定义 MCP Tool

---

## Day 30

# 大复盘

输出：

# 《AI Agent 工程化理解》

必须包含：

* Tool Calling
* Workflow
* Memory
* RAG
* MCP
* Runtime
* Context Engineering

---

# 五、学习资料策略

---

## 第一优先级

官方文档：

* OpenAI Docs
* LangGraph Docs
* MCP Docs

---

## 第二优先级

GitHub Demo

---

## 第三优先级

中文视频

---

## 最后才是系统课程

---

# 六、每天学习时间建议

---

## 工作日（1~2h）

### 推荐结构

| 时间  | 内容   |
| --- | ---- |
| 20m | 理论   |
| 40m | 实战   |
| 20m | 输出总结 |

---

## 周末（3~4h）

用于：

* 项目推进
* 深度理解
* 架构整理
* Demo 开发

---

# 七、每天打卡模板

```md
# Day X 打卡

## 今天完成

- xxx
- xxx

---

## 今天理解

- xxx

---

## 遇到的问题

- xxx

---

## 我现在的理解

- xxx

---

## 明天计划

- xxx
```

---

# 八、核心认知（非常重要）

---

## 1. Agent 不等于 Prompt

真正的 Agent：

```text
LLM + Tool + Workflow + Memory + Runtime
```

---

## 2. AI Agent 越来越像“AI 操作系统”

未来重点：

* Context Engineering
* Runtime
* Tool System
* Workflow
* Memory

---

## 3. 后端工程师在 AI Agent 时代非常有优势

因为真正难的是：

* 状态管理
* Tool 设计
* Runtime
* 稳定性
* 可观测性
* 上下文管理

这些本质是：

# 工程问题

---

# 九、最终目标（记住）

不要追求：

```text
我全懂了
```

而是：

# 追求：

```text
我能做出来
```

因为：

> AI Agent 领域变化极快，真正值钱的是持续构建能力。
