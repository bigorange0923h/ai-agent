# Project Handover Agent Bootcamp

> 30 天完成 AI Agent 基础学习，并交付一个企业项目交接文档 Agent MVP。目标不是收藏资料，而是每天完成任务、提交代码、接受 AI 评审，最终形成可面试、可演示、可写进简历的作品集项目。

## 项目定位

本项目从泛 AI Agent 学习营调整为“企业项目交接文档 Agent”作品集项目。

核心路线：

```text
学习 Agent 基础
→ 跑通 Tool Calling
→ 跑通 RAG
→ 做项目交接文档问答
→ 自动生成项目接手包
→ 加入工程化日志、Token 统计、错误处理
→ 输出 README、架构图、面试讲解稿
```

30 天结束时，不只要知道 Agent、Tool Calling、RAG、Workflow 是什么，还要能拿出一个围绕企业真实场景的 Agent Service，并说明它的架构、边界、问题和后续演进方向。

## 适用对象

- 有 Java / 后端开发经验，想转向 AI Agent / AI 应用工程
- 想通过一个企业真实场景项目完成转型作品集
- 想把 RAG、Tool Calling、Workflow、工程化日志、权限边界落到真实项目中
- 想在 30 天内形成可展示、可复盘、可写进简历的 Agent 项目

## 项目机制

项目分成两条线：

- `days/`：30 天学习、作业、AI 评审和复盘记录
- `app/`、`examples/`、`outputs/`、`docs/`：最终作品集项目资产

每天一个独立目录：

```text
days/day01/
├── README.md       # 当天学习目标
├── mission.md      # 今日任务
├── resources.md    # 学习资料
├── homework.md     # 你的作业
├── ai-review.md    # AI 评审结果
├── reflection.md   # 今日反思
├── tomorrow.md     # 明日准备
├── code/           # 当天代码
└── assets/         # 图片、架构图、流程图
```

学习闭环：

```text
学习 → 完成作业 → AI 评分 → 修改 → 复评 → 通过 → 下一天
```

每一天的输出都要服务最终项目：企业项目交接文档 Agent。当天学到的概念，要尽量落到项目文档导入、文档问答、交接包生成、工程化治理或面试表达中。

## 目录规划

```text
ai-agent/
├── README.md
├── ROADMAP.md
├── SCORE_RULE.md
├── days/                    # 每日学习、作业、评审和复盘
├── app/                     # 最终 Agent MVP 主项目
│   ├── backend/             # 后端服务，后续可接 Java Spring Boot / FastAPI
│   ├── frontend/            # 简单演示页面，后续可接 Vue
│   └── docker/              # Docker Compose 和部署配置
├── examples/                # 演示用模拟项目文档
│   └── demo-project-docs/   # RAG 导入样例，禁止真实敏感数据
├── outputs/                 # Agent 生成结果和运行证据
│   ├── handover-packages/   # 项目接手包 Markdown
│   ├── logs/                # Agent 执行日志样例
│   └── token-reports/       # Token 消耗统计
├── docs/                    # 作品集文档
├── notes/                   # Agent / RAG / Tool / Workflow 概念笔记
├── prompts/                 # AI 导师、评审、面试官 Prompt
├── interview/               # 面试题和讲解材料
├── scripts/                 # 辅助脚本
└── template/                # 每日作业和报告模板
```

目录使用原则：

- 每日过程放在 `days/dayXX/`
- 可运行 MVP 放在 `app/`
- RAG 演示资料放在 `examples/demo-project-docs/`
- Agent 生成的交接包、日志、Token 报告放在 `outputs/`
- 架构图、演示脚本、简历项目描述等作品集材料放在 `docs/`
- 不把真实公司资料、密钥、内网地址、生产日志放入任何目录

## 最终交付物

30 天后，本项目至少交付：

1. 一个可运行的 Agent Service
2. 一个项目文档 RAG 问答 Demo
3. 一个项目交接摘要生成 Workflow
4. 一个 FAQ / 风险点 / 模块清单生成能力
5. 一个简单 Web 管理端或接口 Demo
6. 一份项目 README
7. 一份架构图
8. 一份面试讲解稿
9. 一份 Roadmap，说明后续企业化增强方向

## 快速开始

1. 从 `days/day01/README.md` 开始。
2. 阅读 `mission.md` 和 `resources.md`。
3. 在 `homework.md` 里完成作业。
4. 复制 `prompts/reviewer.md` 的内容，加上你的 `homework.md`，交给 AI 评审。
5. 把评审结果保存到 `ai-review.md`。
6. 分数达到 80 分再进入下一天。

## 推荐 Git 使用方式

```bash
git init
git add .
git commit -m "init Project Handover Agent Bootcamp"
```

每天完成后：

```bash
git add days/dayXX
git commit -m "complete dayXX"
```

建议每个阶段结束后额外打一个阶段提交，例如：

```bash
git add .
git commit -m "complete phase 2 rag mvp"
```

## 安全与合规说明

本项目仅使用模拟文档、开源项目文档或脱敏数据进行演示。禁止上传公司真实客户资料、数据库连接信息、内网地址、密钥、合同、生产日志等敏感内容。

如果需要模拟企业项目交接场景，建议自行编写示例 Markdown / TXT 文档，或使用公开开源项目的 README、部署说明、接口文档作为演示材料。

## 30 天计划

完整路线见 `ROADMAP.md`，评分规则见 `SCORE_RULE.md`。
