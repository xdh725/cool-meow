# 酷喵产业观察 — 项目指南

## 项目概述

"酷喵产业观察"是一个产业调研博客，由**酷喵**维护。酷喵是一个专注微型电机产业调研的 AI Agent，以猫的视角洞察行业趋势。

博客记录酷喵每天对微型电机产业的调研笔记、技术分析和市场观察。

- **GitHub 仓库**: https://github.com/xdh725/cool-meow
- **GitHub 账号**: `xdh725`

## 技术栈

| 技术 | 版本 | 说明 |
|------|------|------|
| Astro | 5.13.10 | 静态站点生成框架 |
| Fuwari 主题 | — | 基于 [saicaca/fuwari](https://github.com/saicaca/fuwari) |
| Tailwind CSS | ^3.4.19 | 实用优先的 CSS 框架 |
| PostCSS | — | 含 postcss-import + tailwindcss/nesting 插件 |
| Svelte | ^5.39.8 | 部分交互组件使用 Svelte |
| TypeScript | ^5.9.3 | 类型检查 |
| pagefind | ^1.4.0 | 静态搜索索引（构建后生成） |
| pnpm | 9.14.4 | 包管理器（通过 packageManager 字段锁定） |
| Node.js | 20 | CI 使用的运行时版本 |

## 项目结构

```
cool-meow/
├── astro.config.mjs           # Astro 构建配置
├── package.json               # 依赖与脚本
├── CLAUDE.md                   # 本文件 — 项目指南
│
├── src/
│   ├── config.ts               # ★ 站点核心配置
│   ├── content/
│   │   ├── config.ts           # Content Collections schema
│   │   ├── posts/              # ★ 博客文章目录
│   │   └── spec/
│   │       └── about.md        # "关于"页面
│   ├── assets/images/          # 图片资源
│   └── ...
│
├── public/
│   └── favicon/                # 网站图标
│
└── scripts/
    ├── deploy.sh               # ★ 部署脚本（本地构建 → gh-pages 推送）
    └── daily-research.sh       # ★ 每日产业调研自动化（crontab）
```

## 文章 Frontmatter 格式

```yaml
---
title: "文章标题"
published: 2026-06-09
description: "一句话描述"
tags: ["标签1", "标签2"]
category: "调研"
---
```

**当前文章使用的分类**: `调研`
**当前文章使用的标签**: `调研`、`微型电机`、`产业分析`、`市场动态`、`技术趋势`

## 开发命令

```bash
pnpm install          # 安装依赖
pnpm dev              # 启动本地开发服务器
pnpm build            # 构建（astro build && pagefind --site dist）
pnpm preview          # 预览构建产物
```

## 部署流程

### 部署方式：本地构建 + gh-pages 分支推送

使用 `scripts/deploy.sh` 一键完成：
```bash
bash scripts/deploy.sh
```

### 部署前必须本地测试（强制规则）

1. `pnpm build` — 确保构建无错误
2. `pnpm preview` 或 `pnpm dev` — 确认页面正常
3. 确认无误后再执行 `bash scripts/deploy.sh`

### GitHub Pages 配置

- **Source**: `gh-pages` 分支，根目录 `/`（legacy 模式）
- **`.nojekyll` 文件**：必须存在

## 关键配置

### `astro.config.mjs`
- `site`: `"https://xdh725.github.io"`
- `base`: `"/cool-meow/"` — **不可更改**
- `trailingSlash`: `"always"`

### `src/config.ts`
- **站点标题**: `"酷喵产业观察"`
- **副标题**: `"一只酷猫的微型电机产业调研日记"`
- **语言**: `"zh_CN"`
- **主题色 hue**: `25`（橙色），`fixed: false`
- **作者名**: `"酷喵"`
- **个人简介**: `"专注微型电机产业调研，用猫眼洞察行业趋势 😺⚡"`
- **导航栏**: 首页、归档、关于、GitHub

## 调研主题

每日轮换的调研方向：
1. 微型直流电机（有刷 / 无刷）技术进展
2. 步进电机与伺服电机市场分析
3. 空心杯电机应用与产业格局
4. 微型电机在消费电子中的应用
5. 微型电机在医疗器械中的应用
6. 微型电机产业链上游（磁材、绕线、轴承）
7. 微型电机在机器人与自动化中的应用

## 微信排版兼容规则

日记会通过 `~/scripts/wechat-publish.sh` 自动同步到微信公众号，写 Markdown 时必须遵守：
- **禁止嵌套列表** — 微信不支持嵌套渲染
- **禁止斜体** — 用加粗代替
- **禁止列表项内多段落** — 列表项内不要空行
- **禁止外部图片** — 外部 URL 会被微信过滤
- **有序列表正常写** — `1. 2. 3.` 会自动转换

## 注意事项

1. **base 路径必须是 `/cool-meow/`** — 修改会导致所有资源 404
2. **构建包含两步** — `astro build` 之后还有 `pagefind --site dist`
3. **pnpm 强制** — `preinstall` 脚本阻止 npm 或 yarn
4. **文章文件名约定** — `YYYY-MM-DD-主题.md`
