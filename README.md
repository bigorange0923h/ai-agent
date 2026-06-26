# AI Agent Bootcamp

> 30 天 AI Agent 工程师冲刺项目。目标不是收藏资料，而是每天完成任务、提交作业、接受 AI 评审、持续迭代。

## 适用对象

- 有后端开发经验，想转向 AI Agent / AI 应用工程
- 想达到面试、项目实战、商业化 Demo 水平
- 偏好视频 + 实战 + 项目驱动学习

## 项目机制

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
git commit -m "init AI Agent Bootcamp"
```

每天完成后：

```bash
git add days/dayXX
git commit -m "complete dayXX"
```

## 原始 30 天计划

见 `ROADMAP.md`。
