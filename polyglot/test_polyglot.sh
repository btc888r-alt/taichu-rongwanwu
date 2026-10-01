#!/usr/bin/env bash
# 太初熔万物 · 多语言一键编译运行测试
# 先检查 gcc / javac / node 是否已安装，缺啥就 apt 装啥，再逐个编译运行。
# 用法：bash polyglot/test_polyglot.sh
set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"
PASS=0; FAIL=0
# 构建产物统一进临时目录，不污染源码目录
BUILD="$(mktemp -d)"
trap 'rm -rf "$BUILD"' EXIT

have() { command -v "$1" >/dev/null 2>&1; }

# 带锁等待的 apt 安装（避免与其他 apt 进程撞车；包不可解析时才 update）
apt_install() {
  local pkg="$1" tries=0 updated=0
  while true; do
    if DEBIAN_FRONTEND=noninteractive apt-get install -y -qq "$pkg" 2>/tmp/apt_err.txt; then
      return 0
    fi
    if grep -q "Unable to locate package" /tmp/apt_err.txt && [ "$updated" -eq 0 ]; then
      updated=1
      echo "    软件源中无 $pkg，先 update…"
      apt-get update -qq || true
      continue
    fi
    tries=$((tries + 1))
    if [ "$tries" -ge 30 ]; then
      echo "    apt 安装 $pkg 失败，请手动安装后重试" >&2
      return 1
    fi
    echo "    apt 被占用或暂不可用，20 秒后重试（$tries/30）…"
    sleep 20
  done
}

echo "==> 检查工具链"
if ! have gcc; then
  echo "    缺 gcc，apt 安装…"
  apt_install gcc
fi
if ! have javac; then
  echo "    缺 javac，apt 安装 default-jdk-headless…"
  apt_install default-jdk-headless
fi
if ! have node; then
  echo "    缺 node，apt 安装 nodejs…"
  apt_install nodejs
fi
gcc --version | head -1
javac -version 2>&1
node --version

run_case() {
  local name="$1"; shift
  echo "--- $name"
  if "$@" 2>&1; then PASS=$((PASS+1)); else FAIL=$((FAIL+1)); echo "    ^ FAILED: $name"; fi
}

echo "==> C"
run_case "gcc 编译" gcc -o "$BUILD/hello_c" "$DIR/hello.c"
run_case "C 运行" "$BUILD/hello_c"

echo "==> Java"
# 显式 UTF-8：容器默认 LANG=C 时 javac 会按 US-ASCII 读源码导致中文注释报错
run_case "javac 编译" javac -encoding UTF-8 -d "$BUILD" "$DIR/Hello.java"
run_case "Java 运行" java -cp "$BUILD" Hello

echo "==> Node.js"
run_case "node 运行" node "$DIR/hello.js"

echo "===================="
echo "通过: $PASS, 失败: $FAIL"
[ "$FAIL" -eq 0 ]
