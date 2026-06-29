# Project Handover Agent Bootcamp 30 天 Roadmap

> 目标：30 天内完成一个企业项目交接文档 Agent MVP。它不是泛 AI Agent 学习笔记，而是一个可运行、可演示、可复盘、可写进简历的作品集项目。

学习模式：

```text
项目驱动 + 高频输出 + AI 评审 + 工程化复盘
```

核心主线：

```text
Agent 基础 → Tool Calling → RAG 问答 → 交接包生成 Workflow → 工程化与作品集
```

---

## 一、总目标

30 天内完成一个企业项目交接文档 Agent MVP，支持：

- 项目文档导入
- 文档切分与向量化
- 基于资料的 RAG 问答
- 回答来源引用
- 自动生成项目概览
- 自动生成模块清单
- 自动生成部署说明
- 自动生成 FAQ
- 自动识别风险点
- 生成新人接手建议
- Agent 执行日志
- Token 消耗统计
- 可用于面试演示的 README 和架构图

最终作品要能回答两个问题：

1. 这个 Agent 如何帮助新人快速接手一个项目？
2. 这个项目如何体现 AI Agent 工程能力，而不是只会调接口？

---

## 二、学习总策略

## 1. 先跑通，再优化

```text
先做出来
再理解原理
最后补工程化
```

每天只追求一个明确增量，避免陷入资料收集和框架比较。

## 2. 所有学习都回到交接文档场景

每个概念都要问：

```text
它能不能帮助 Agent 读懂项目文档、回答问题、生成接手包？
```

如果不能直接服务主线，先放到后续 Roadmap。

## 3. 每天必须输出

每天至少输出其中一类：

- 一张图
- 一个 Demo
- 一个工具函数
- 一个 RAG 能力
- 一个 Workflow 节点
- 一段项目复盘
- 一个面试讲解片段

禁止只看视频、只收藏资料、不提交结果。

## 4. 学习优先级

30 天主线只覆盖：

- Structured Output
- Tool Calling
- RAG
- Workflow
- Agent 工程化
- 作品集表达

暂不作为主线：

- 模型训练
- LoRA / Fine-tuning
- Diffusion
- CUDA
- 复杂 MCP 生态
- AI CRM Agent

---

## 三、推荐技术栈

| 模块 | 推荐方案 | 说明 |
|---|---|---|
| LLM SDK | OpenAI SDK 或兼容 SDK | 先跑通 Chat / Structured Output / Tool Calling |
| Agent / Workflow | LangGraph 或轻量自研流程 | 重点理解状态、节点、路由和失败处理 |
| Backend | Java Spring Boot / FastAPI | Java 后端优先可用 Spring Boot 承接最终服务 |
| Frontend | Vue 或 Swagger 接口 | 简单可演示即可，不做复杂管理系统 |
| Vector DB | Chroma | 初期本地 Demo 足够 |
| Vector DB 增强 | pgvector | 后续企业化增强方向 |
| 文档格式 | Markdown / TXT | MVP 优先，不急着处理复杂 PDF |
| Runtime / 部署 | Docker Compose | 用于最终演示和复现 |

---

## 四、30 天学习路线

## 阶段一：Day 1~7，Agent 基础

目标：跑通 LLM + Tool Calling + Structured Output。

阶段输出：

- AI Agent 技术地图
- Tool Calling Demo
- JSON 结构化输出 Demo
- 最小 AI Assistant

### Day 1：AI Agent 技术地图

学习内容：

- 什么是 Agent
- Agent 和 Prompt / Chatbot 的区别
- LLM + Tool + Workflow + Memory + RAG 的关系

输出：

- 完成《AI Agent 技术地图》
- 用自己的话解释：为什么项目交接文档 Agent 不只是 Prompt

### Day 2：Structured Output

学习内容：

- 让模型输出稳定 JSON
- 理解 schema、字段约束、失败重试

实战示例：

```json
{
  "projectName": "demo-crm",
  "summary": "客户管理系统",
  "modules": ["customer", "order", "auth"],
  "risks": ["缺少部署文档", "接口鉴权说明不完整"]
}
```

输出：

- 从项目说明中提取 `projectName`、`summary`、`modules`、`risks`
- 记录一次结构化输出失败和修复方式

### Day 3：Tool Calling 基础

学习内容：

- Tool schema
- 参数校验
- 模型选择工具的基本过程

实战工具：

```text
get_project_docs(projectId)
```

输出：

- 实现一个简单工具调用 Demo
- 说明模型为什么需要 Tool，而不是直接编造项目资料

### Day 4：多工具调用

新增工具：

```text
search_doc_chunks(keyword)
generate_handover_summary(projectId)
```

输出：

- Agent 能根据用户问题选择不同工具
- 至少完成一次“查资料 → 生成摘要”的多工具调用

### Day 5：Agent Loop 和多轮状态

学习内容：

- Agent Loop
- 短期记忆
- Conversation State
- 多轮问答中的上下文边界

输出：

- 实现一个简单多轮对话状态
- 记录哪些信息应该进入状态，哪些不应该长期保留

### Day 6~7：项目小结

目标：完成一个最小 AI Assistant。

能力要求：

- 支持 Tool Calling
- 支持 Structured Output
- 支持简单多轮对话
- 能围绕项目说明做基础问答

阶段交付：

- `days/day07/code/` 中保留可运行 Demo
- `days/day07/reflection.md` 中总结 Agent / Tool / State 的关系

---

## 阶段二：Day 8~15，RAG 知识库

目标：跑通项目文档问答。

RAG 前移到 Workflow 前面，因为本项目主线是项目交接文档 Agent，核心是先把文档吃进去、查出来、答出来。

阶段输出：

- Markdown / TXT 文档导入
- 文档切分
- 向量入库
- RAG 问答
- 来源引用
- 项目交接文档问答 MVP

### Day 8：理解 Embedding / Chunk / Retrieval

学习内容：

- Embedding 是什么
- Chunk 为什么影响召回质量
- Retrieval 和直接把全文塞进 Prompt 的区别

输出：

- 画出“文档 → Chunk → Embedding → 检索 → 回答”的流程图

### Day 9：实现 Markdown / TXT 文档加载

实战内容：

- 读取 Markdown / TXT
- 提取文件名、标题、正文
- 为每份文档生成基础 metadata

输出：

- 可加载一组项目交接模拟文档
- 记录文档来源和脱敏状态

### Day 10：实现文档切分

实战内容：

- 按标题、段落或固定长度切分
- 保留 `source`、`section`、`chunkIndex`

输出：

- 生成可检查的 chunk 列表
- 对比至少两种切分策略的优缺点

### Day 11：接入向量库

推荐路线：

- 初期使用 Chroma
- 后续可升级 pgvector

输出：

- 将项目文档 chunk 写入向量库
- 支持按 query 检索 Top K 文档片段

### Day 12：实现基于文档的问答

实战内容：

- 用户提问
- 检索相关 chunk
- 组织上下文
- 调用模型回答

输出：

- 完成一个项目文档 RAG 问答 Demo
- 至少测试 5 个项目接手常见问题

### Day 13：实现回答来源引用

实战内容：

- 回答中标注引用来源
- 返回文档名、章节、chunk 编号
- 对无法从资料中确认的问题明确说明不知道

输出：

- 每个回答都能追溯来源
- 记录一次“拒绝编造”的案例

### Day 14~15：项目交接文档问答 MVP

目标：完成可演示的 RAG MVP。

能力要求：

- 导入项目文档
- 检索相关片段
- 基于资料回答
- 返回来源引用
- 对缺失资料给出补充建议

阶段交付：

- RAG 问答 Demo
- 测试问题清单
- RAG 效果复盘

---

## 阶段三：Day 16~23，交接文档 Agent Workflow

目标：让 Agent 自动生成项目接手包。

阶段输出：

- 项目概览生成
- 模块清单生成
- 部署说明生成
- FAQ 生成
- 风险点识别
- 新人接手建议
- 项目接手包 Markdown 输出

### Day 16：理解 Workflow 和 Agent 的区别

学习内容：

- Workflow 的确定性
- Agent 的动态决策
- 为什么交接包生成适合拆成多个 Workflow 节点

输出：

- 画出项目交接分析流程
- 说明哪些节点固定执行，哪些节点允许 Agent 判断

### Day 17：设计项目交接分析流程

流程建议：

```text
导入文档
→ 检索核心资料
→ 生成项目概览
→ 生成模块清单
→ 生成部署说明
→ 生成 FAQ
→ 识别风险点
→ 生成新人接手建议
→ 汇总为接手包 Markdown
```

输出：

- 完成 Workflow 节点设计
- 定义每个节点的输入、输出、失败处理

### Day 18：生成项目概览

输出内容：

- 项目名称
- 业务背景
- 核心功能
- 技术栈
- 关键依赖

交付：

- `project-overview.md`

### Day 19：生成模块清单

输出内容：

- 模块名称
- 模块职责
- 关键入口
- 依赖关系
- 相关文档来源

交付：

- `module-list.md`

### Day 20：生成部署说明

输出内容：

- 本地启动步骤
- 依赖服务
- 环境变量
- 常见启动失败原因
- 缺失信息清单

交付：

- `deployment-guide.md`

### Day 21：生成 FAQ

输出内容：

- 新人最容易问的问题
- 每个问题的资料来源
- 无法确认的问题标记为待补充

交付：

- `faq.md`

### Day 22：生成风险点

风险类型：

- 文档缺失
- 部署不完整
- 权限边界不清
- 外部依赖不明确
- 数据库 / 密钥 / 内网地址泄露风险
- 模块职责冲突

交付：

- `risk-list.md`

### Day 23：生成新人接手建议和项目接手包 Markdown

输出内容：

- 前 1 天应该看什么
- 前 3 天应该跑通什么
- 前 1 周应该理解哪些模块
- 应该向原团队确认哪些问题

最终交付：

- `handover-package.md`
- 包含项目概览、模块清单、部署说明、FAQ、风险点、新人建议

---

## 阶段四：Day 24~30，工程化与作品集

目标：把 Demo 包装成可面试作品。

阶段输出：

- Agent 执行日志
- Token 统计
- 错误处理
- Java Spring Boot 主服务接入
- 简单 Vue 页面或 Swagger 接口
- Docker Compose
- README
- 架构图
- 面试讲解稿

### Day 24：Agent 执行日志

记录内容：

- requestId
- 用户问题
- 调用的工具
- 检索到的 chunk
- Workflow 节点状态
- 错误信息

输出：

- 一份可查看的执行日志样例

### Day 25：Token 消耗统计

记录内容：

- prompt tokens
- completion tokens
- total tokens
- 单次请求估算成本

输出：

- Token 统计字段
- 一份成本分析说明

### Day 26：错误处理和失败重试

覆盖场景：

- 模型调用失败
- 向量库检索为空
- 文档格式不支持
- JSON 解析失败
- Workflow 某个节点失败

输出：

- 错误处理策略
- 至少 3 个失败案例和处理结果

### Day 27：Java Spring Boot 主服务接入

目标：

- 用 Java 后端承接最终 Agent Service
- 暴露导入、问答、生成接手包等接口

输出：

- Agent Service 接口草案或最小可运行接口
- 说明 Java 后端如何调用 Agent / RAG 能力

### Day 28：简单 Vue 页面或 Swagger 接口文档

二选一即可：

- 简单 Vue 页面：文档导入、问题输入、回答展示、来源展示
- Swagger 接口：导入文档、发起问答、生成交接包、查看日志

输出：

- 可用于演示的入口

### Day 29：Docker Compose / README / 架构图

输出内容：

- Docker Compose
- 项目 README
- 架构图
- 演示步骤
- 示例问题

架构图至少包含：

```text
User / Web / API / Agent Service / RAG / Vector DB / LLM / Logs
```

### Day 30：大复盘 + 面试讲解稿

输出内容：

- 项目复盘
- 面试讲解稿
- 简历项目描述
- 后续 Roadmap

面试讲解稿至少能讲清楚：

- 为什么选项目交接文档 Agent
- RAG 如何保证回答基于资料
- Tool Calling 和 Workflow 在项目里分别解决什么问题
- 如何做日志、Token 统计、错误处理
- 当前 MVP 的限制和企业化增强方向

---

## 五、后续 Roadmap

以下内容不作为 30 天主线，但可作为作品集后续增强：

## 1. MCP 增强

- 将文档检索、接手包生成、日志查询封装为 MCP Tool
- 支持 IDE / 桌面客户端调用
- 对比传统 API Tool 和 MCP Tool 的边界

## 2. AI CRM Agent

- 结合客户、订单、活动等业务数据
- 从“文档问答”升级到“业务流程辅助”
- 引入权限、审计和业务规则校验

## 3. 企业级知识库能力

- pgvector 替代本地 Chroma
- 文档权限控制
- 多项目、多租户隔离
- 文档版本管理
- 异步索引任务

## 4. 评测与质量治理

- 构建标准问题集
- 评估召回率、引用准确率、幻觉率
- 加入人工反馈闭环

---

## 六、每天打卡模板

```md
# Day X 打卡

## 今天完成

- xxx

## 今天理解

- xxx

## 项目增量

- xxx

## 遇到的问题

- xxx

## AI 评审修改点

- xxx

## 明天计划

- xxx
```

---

## 七、核心认知

## 1. Agent 不等于 Prompt

真正的 Agent 需要：

```text
LLM + Tool + Workflow + Memory / State + RAG + Runtime
```

## 2. RAG 的关键不是“能回答”，而是“能追溯”

项目交接场景里，回答必须说明来自哪份文档、哪个章节、哪个片段。不能确认的信息要明确标记为缺失，而不是编造。

## 3. Workflow 负责稳定交付，Agent 负责动态判断

交接包生成适合用 Workflow 固定流程保证产出完整性；在检索、补充问题、风险识别等环节，可以让 Agent 做动态判断。

## 4. 后端工程师在 Agent 工程里有优势

真正难的是：

- 状态管理
- Tool 设计
- 权限边界
- 错误处理
- 成本控制
- 可观测性
- 上下文管理

这些本质上都是工程问题。

## 5. 最终追求

不要追求：

```text
我全懂了
```

而是追求：

```text
我能做出来，并且能解释清楚为什么这样做
```
