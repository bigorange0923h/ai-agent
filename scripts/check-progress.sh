#!/usr/bin/env bash
set -u

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
DAYS_DIR="$ROOT_DIR/days"

has_real_content() {
  file="$1"
  [ -f "$file" ] || return 1

  cleaned="$(sed \
    -e '/^#/d' \
    -e '/^>/d' \
    -e '/^```/d' \
    -e '/^|/d' \
    -e '/^- \[[ xX]\]/d' \
    -e '/^[-[:space:]]*$/d' \
    -e '/待评审/d' \
    -e '/这里粘贴/d' \
    -e '/请用自己的话解释/d' \
    -e '/请查看下一天目录/d' \
    -e '/今日目标：/d' \
    -e '/今日输出：/d' \
    -e '/代码位置：$/d' \
    -e '/运行方式：$/d' \
    -e '/运行结果：$/d' \
    -e '/截图 \/ 图示位置：$/d' \
    -e '/完成情况：$/d' \
    -e '/今天这个知识点解决的问题是：$/d' \
    -e '/如果没有它，Agent 会出现的问题是：$/d' \
    -e '/它和后端工程中的相似点是：$/d' \
    -e '/概念容易看懂，但实战会卡住/d' \
    -e '/不要只看资料，必须产出代码或图/d' \
    -e '/今天的内容我能不能用 3 句话讲清楚/d' \
    -e '/今天有没有可运行成果/d' \
    -e '/AI Review 是否超过 80 分/d' \
    "$file")"

  [ -n "$cleaned" ]
}

review_passed() {
  file="$1"
  [ -f "$file" ] || return 1

  if grep -Eq '是否通过[[:space:]]*$' "$file" && grep -Eiq 'YES|通过|是' "$file"; then
    return 0
  fi

  score="$(grep -Eo '[0-9]{1,3}[[:space:]]*/[[:space:]]*100' "$file" | head -n 1 | sed 's/[[:space:]]*\/.*//')"
  [ -n "$score" ] || return 1
  [ "$score" -ge 80 ] 2>/dev/null
}

print_day_status() {
  day_dir="$1"
  day_name="$(basename "$day_dir")"
  day_num="$(printf '%s' "$day_name" | sed 's/day//')"
  incomplete=""

  homework="$day_dir/homework.md"
  review="$day_dir/ai-review.md"
  reflection="$day_dir/reflection.md"
  tomorrow="$day_dir/tomorrow.md"

  if ! has_real_content "$homework"; then
    incomplete="${incomplete}homework.md 未填写或仍是模板；"
  fi

  if ! has_real_content "$review"; then
    incomplete="${incomplete}ai-review.md 未评审；"
  elif ! review_passed "$review"; then
    incomplete="${incomplete}ai-review.md 未通过或未达到 80 分；"
  fi

  if ! has_real_content "$reflection"; then
    incomplete="${incomplete}reflection.md 未填写；"
  fi

  if ! has_real_content "$tomorrow"; then
    incomplete="${incomplete}tomorrow.md 未填写；"
  fi

  if [ -n "$incomplete" ]; then
    printf '当前进度：Day %s\n' "$day_num"
    printf '未完成事项：%s\n' "$incomplete"
    printf '建议下一步：先补齐 %s 的作业、评审、反思和明日准备，再进入下一天。\n' "$day_name"
    return 0
  fi

  return 1
}

if [ ! -d "$DAYS_DIR" ]; then
  echo "未找到 days/ 目录，无法判断当前进度。"
  exit 1
fi

for day_dir in "$DAYS_DIR"/day[0-9][0-9]; do
  [ -d "$day_dir" ] || continue
  if print_day_status "$day_dir"; then
    exit 0
  fi
done

echo "当前进度：Day 30 已完成"
echo "未完成事项：未发现未完成 Day"
echo "建议下一步：整理最终 README、架构图、面试讲解稿和后续 Roadmap。"
