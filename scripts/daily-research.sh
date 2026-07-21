#!/bin/bash
# 酷喵产业观察 — 每日自动化脚本
# 由 crontab 每天早上 10:30 触发（与毛毛虫日记错开）
# 调用 Claude Code headless 模式完成：搜索 → 调研 → 写文章 → 部署

PROJECT_DIR="/Users/xiedonghua/Desktop/AI/github/cool-meow"
LOG_FILE="/tmp/cool-meow-research.log"
FEISHU_NOTIFY="/Users/xiedonghua/scripts/feishu-notify.sh"
DATE=$(date +%Y-%m-%d)

echo "===== [$DATE $(date +%H:%M:%S)] 开始每日产业调研 =====" >> "$LOG_FILE"

# 确保 claude、pnpm、node 在 PATH 中
export PATH="/Users/xiedonghua/.nvm/versions/node/v22.17.0/bin:/usr/local/bin:/usr/bin:/bin"

# 进入项目目录
cd "$PROJECT_DIR"

# 确保 git 在 main 分支
git checkout main 2>/dev/null

# 计算天数（从 2026-06-09 第一天开始计数）
START_DATE="2026-06-09"
DAY_NUMBER=$(( ($(date -j -f "%Y-%m-%d" "$DATE" "+%s") - $(date -j -f "%Y-%m-%d" "$START_DATE" "+%s")) / 86400 + 1 ))

# 调研主题列表（轮换）
TOPICS=(
  "微型直流电机 — 有刷与无刷的技术路线对比"
  "步进电机 — 市场格局与主要厂商分析"
  "空心杯电机 — 高端应用与国产替代进展"
  "消费电子 — 手机、TWS耳机、穿戴设备中的微电机"
  "医疗器械 — 手术机器人、胰岛素泵、牙科设备中的微电机"
  "产业链上游 — 磁材、绕线、轴承、驱动IC"
  "机器人与自动化 — 人形机器人关节电机的需求与挑战"
)

# 根据星期几选择主题 (1=周一, ..., 7=周日)
DAY_OF_WEEK=$(date +%u)
TOPIC_INDEX=$(( (DAY_OF_WEEK - 1) % 7 ))
TOPIC="${TOPICS[$TOPIC_INDEX]}"

echo "[$DATE] 第 ${DAY_NUMBER} 天 | 调研主题: $TOPIC" >> "$LOG_FILE"

# Fallback 主题
FALLBACK_TOPIC="${TOPICS[$TOPIC_INDEX]}"

# 调用 Claude Code headless 模式以酷喵视角写调研文章
PROMPT=$(cat <<'PROMPT_EOF'
你是酷喵，一只专注微型电机产业调研的猫。你从 2026 年 6 月 9 日开始写调研日记，今天是第 ${DAY_NUMBER} 天。你的使命是用猫眼洞察微型电机行业的趋势与机会。

今天的任务是写一篇产业调研文章，深入分析一个微型电机相关主题。

## 第一步：搜索最新行业动态

先搜索微型电机行业最近 1-3 天的热点新闻/技术动态。

**重要：每次只发 1 个搜索请求，等结果返回后再决定是否需要更多搜索。绝对不要同时发起多个搜索请求！**

搜索关键词参考（只选 1-2 个最相关的搜索）：
- "micro motor" industry news
- "微型电机" 市场动态
- "brushless DC motor" "BLDC" new product

判断标准（满足任一即为热点）：
- 知名微电机厂商发布新产品或财报
- 微型电机相关技术取得重要突破
- 下游应用领域（机器人、消费电子、医疗等）出现重大需求变化
- 行业并购、融资、政策变化

## 第二步：确定今天调研什么

- **如果找到了热点**：以该热点为主题深入调研
- **如果没有热点**：调研 fallback 主题「${FALLBACK_TOPIC}」

## 第三步：调研并写文章

1. 根据确定的主题，搜索并阅读 1-2 篇高质量行业文章（英文或中文）
2. 用 web_fetch_exa 阅读全文，理解核心内容
3. 在 src/content/posts/ 下创建今日文章，文件名格式：${DATE}-主题关键词.md
4. 文章必须包含以下 frontmatter：
   ---
   title: "第${DAY_NUMBER}天 — 文章标题"
   published: ${DATE}
   description: "一句话描述今天调研了什么、有什么发现"
   tags: ["调研", "其他相关标签"]
   category: "调研"
   ---
5. 文章的写作风格：
   - 以酷喵第一人称写，专业但不枯燥，适当加入猫的视角和比喻
   - 开头用「第${DAY_NUMBER}天」引入，交代今天关注的主题
   - 调研内容要有数据支撑（市场规模、增长率、厂商份额等）
   - 分析要有深度：不只说「是什么」，要说「为什么」和「意味着什么」
   - 适当用 emoji 标记重点，但不要过度
   - 结尾写「酷喵观点」，给出明确的判断或建议
   - 字数 1200 字以上

6. **文末必须加「## 参考资料」区块**（紧跟在「酷喵观点」之后）：
   - 列出今天调研阅读过的所有文章/报道/财报的原文链接
   - 格式（用 Markdown 无序列表 + 直接 URL，不要嵌套，不要图片语法）：
     ```
     ## 参考资料

     - 文章标题1: https://example.com/article1
     - 文章标题2: https://example.com/article2
     - 厂商官网/公告/财报: https://...
     ```
   - **链接必须是真实存在的 URL**，来自第二步搜索/阅读时用过的 web_search_exa / web_fetch_exa 返回结果
   - **禁止编造链接**——如果只查了一篇就只列一篇，不要凑数
   - 链接数量不限（1-5 篇都可），但每一篇都必须是今天文章内容真正参考过的
   - **微信兼容**：不要用 `![图片](url)` 语法，不要嵌套列表，直接 `- 标题: URL` 即可

## 第四步：构建部署

7. 写完后执行 pnpm build
8. 然后执行 scripts/deploy.sh 部署到 GitHub Pages
9. 最后把源码文章提交到 main 分支并推送

参考风格：
- 标题格式：「第N天 — 简短描述」
- 语气：一只专业的酷猫，严谨但不无聊，偶尔用猫的比喻
- 数据优先，观点明确

微信排版兼容规则（文章会自动同步到微信公众号，以下写法会导致排版异常）：
- 禁止使用嵌套列表（如列表项内再包含子列表），微信不支持嵌套列表渲染，请改用平铺的段落或用标题分隔
- 禁止使用斜体（*文字* 或 _文字_），微信对斜体渲染不一致，请用加粗（**文字**）代替
- 禁止在列表项中使用多个段落（列表项内不要空行），否则会断裂为独立段落
- 图片使用纯文字描述代替，不要用 ![alt](url) 语法（外部图片 URL 会被微信过滤）
- 有序列表直接用 Markdown 数字列表写即可（1. 2. 3.），会自动转换为微信兼容格式

注意：
- 这是产业调研文章，要有数据和事实支撑
- 不要只写概念，要有具体的厂商名、产品型号、市场数据
- 热点判断要务实，普通新闻不算热点
- 确保部署成功后再结束
PROMPT_EOF
)
PROMPT=${PROMPT//\$\{DAY_NUMBER\}/$DAY_NUMBER}
PROMPT=${PROMPT//\$\{DATE\}/$DATE}
PROMPT=${PROMPT//\$\{FALLBACK_TOPIC\}/$FALLBACK_TOPIC}

# 使用 stream-json + verbose 输出格式。外层只重试模型服务端临时过载，
# 避免一次 529 直接让当天调研失败。
MAX_ATTEMPTS=3
RETRY_DELAYS=(300 900)
EXIT_CODE=1
BASE_GIT_STATUS=$(git status --porcelain)

for ATTEMPT in $(seq 1 "$MAX_ATTEMPTS"); do
  ATTEMPT_LOG=$(mktemp "/tmp/cool-meow-claude-${DATE}.XXXXXX")
  echo "[$DATE] Claude 调研尝试 ${ATTEMPT}/${MAX_ATTEMPTS}" >> "$LOG_FILE"

  echo "$PROMPT" | claude --print \
    --output-format stream-json \
    --verbose \
    --model sonnet \
    --allowedTools "WebSearch,WebFetch,mcp__exa__web_search_exa,mcp__exa__web_fetch_exa,Read,Write,Edit,Bash,Glob,Grep" \
    >> "$ATTEMPT_LOG" 2>&1

  EXIT_CODE=$?
  cat "$ATTEMPT_LOG" >> "$LOG_FILE"

  POST_FILE_AFTER=$(ls -t "$PROJECT_DIR/src/content/posts/${DATE}"-*.md 2>/dev/null | head -1)
  if [ $EXIT_CODE -eq 0 ] && { grep -Eq '"is_error":true|"subtype":"error_during_execution"|"terminal_reason":"aborted_streaming"|API Error:' "$ATTEMPT_LOG" || [ -z "$POST_FILE_AFTER" ]; }; then
    echo "[$DATE] Claude 返回 0 但检测到失败结果或缺少今日文章文件，按失败处理" >> "$LOG_FILE"
    EXIT_CODE=1
  fi

  if [ $EXIT_CODE -eq 0 ]; then
    rm -f "$ATTEMPT_LOG"
    break
  fi

  if ! grep -Eiq 'API Error: 529|error_status":529|overloaded|访问量过大' "$ATTEMPT_LOG"; then
    echo "[$DATE] 非模型过载错误，不自动重试，保留现场供排查" >> "$LOG_FILE"
    rm -f "$ATTEMPT_LOG"
    break
  fi

  CURRENT_GIT_STATUS=$(git status --porcelain)
  if [ "$CURRENT_GIT_STATUS" != "$BASE_GIT_STATUS" ] || ls "$PROJECT_DIR/src/content/posts/${DATE}"-*.md >/dev/null 2>&1; then
    echo "[$DATE] 已产生部分产物，不自动重试，避免覆盖或重复发布" >> "$LOG_FILE"
    rm -f "$ATTEMPT_LOG"
    break
  fi

  if [ "$ATTEMPT" -lt "$MAX_ATTEMPTS" ]; then
    DELAY=${RETRY_DELAYS[$((ATTEMPT - 1))]}
    echo "[$DATE] Claude 服务端临时过载，${DELAY}s 后重试" >> "$LOG_FILE"
    rm -f "$ATTEMPT_LOG"
    sleep "$DELAY"
  else
    echo "[$DATE] Claude 服务端临时过载，已达到最大重试次数" >> "$LOG_FILE"
    rm -f "$ATTEMPT_LOG"
  fi
done

if [ $EXIT_CODE -eq 0 ]; then
  echo "[$DATE] 调研文章完成！退出码: $EXIT_CODE" >> "$LOG_FILE"

  # 发布到微信公众号草稿箱（复用毛毛虫的脚本，仅修改品牌名）
  WECHAT_PUBLISH="/Users/xiedonghua/scripts/wechat-publish-cool-meow.sh"
  POST_FILE=$(ls -t "$PROJECT_DIR/src/content/posts/${DATE}"-*.md 2>/dev/null | head -1)
  if [ -x "$WECHAT_PUBLISH" ] && [ -n "$POST_FILE" ]; then
    echo "[$DATE] 发布到微信公众号草稿箱..." >> "$LOG_FILE"
    "$WECHAT_PUBLISH" "$POST_FILE" >> "$LOG_FILE" 2>&1 || echo "[$DATE] 微信发布失败（不影响主流程）" >> "$LOG_FILE"
  fi

  # 飞书通知：成功
  if [ -x "$FEISHU_NOTIFY" ]; then
    "$FEISHU_NOTIFY" "酷喵产业观察 — 第 ${DAY_NUMBER} 天调研完成

日期: $DATE
状态: 成功
调研主题: $TOPIC

查看: https://xdh725.github.io/cool-meow/" >> "$LOG_FILE" 2>&1 || true
  fi
else
  echo "[$DATE] 调研失败！退出码: $EXIT_CODE" >> "$LOG_FILE"
  if [ -x "$FEISHU_NOTIFY" ]; then
    "$FEISHU_NOTIFY" "酷喵产业观察 — 第 ${DAY_NUMBER} 天调研失败

日期: $DATE
状态: 失败（退出码: $EXIT_CODE）
请检查日志: $LOG_FILE" >> "$LOG_FILE" 2>&1 || true
  fi
fi

echo "===== [$DATE $(date +%H:%M:%S)] 每日产业调研结束 =====" >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

exit $EXIT_CODE
